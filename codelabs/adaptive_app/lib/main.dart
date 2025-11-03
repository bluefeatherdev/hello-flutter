// Codelabs - Adaptive Apps in Flutter
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:googleapis_auth/googleapis_auth.dart';
import 'package:provider/provider.dart';

import 'src/adaptive_login.dart';
import 'src/adaptive_playlists.dart';
import 'src/app_state.dart';
import 'src/playlist_details.dart';

// https://developers.google.com/youtube/v3/guides/auth/installed-apps#identify-access-scopes
final scopes = ['https://www.googleapis.com/auth/youtube.readonly'];

final clientId = ClientId(
  '788307105657-a4m0c7c83vmu60l7rpal0ogafmue2bp7.apps.googleusercontent.com',
  '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',
);

final _router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (context, state) {
        return const AdaptivePlaylists();
      },
      // Add redirect configuration
      redirect: (context, state) {
        if (!context.read<AuthedUserPlaylists>().isLoggedIn) {
          return '/login';
        } else {
          return null;
        }
      },
      routes: <RouteBase>[
        // Add new login Route
        GoRoute(
          path: 'login',
          builder: (context, state) {
            return AdaptiveLogin(
              clientId: clientId,
              scopes: scopes,
              loginButtonChild: const Text('Login to YouTube'),
            );
          },
        ),
        GoRoute(
          path: 'playlist/:id',
          builder: (context, state) {
            final title = state.uri.queryParameters['title']!;
            final id = state.pathParameters['id']!;
            return Scaffold(
              appBar: AppBar(title: Text(title)),
              body: PlaylistDetails(playlistId: id, playlistName: title),
            );
          },
        ),
      ],
    ),
  ],
);

void main() {
  runApp(
    ChangeNotifierProvider<AuthedUserPlaylists>(
      create: (context) => AuthedUserPlaylists(),
      child: const PlaylistsApp(),
    ),
  );
}

class PlaylistsApp extends StatelessWidget {
  const PlaylistsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Jesús Domínguez Playlists',
      theme: FlexColorScheme.light(scheme: FlexScheme.red).toTheme,
      darkTheme: FlexColorScheme.dark(scheme: FlexScheme.red).toTheme,
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      routerConfig: _router,
    );
  }
}
