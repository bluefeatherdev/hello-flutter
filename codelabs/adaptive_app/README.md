# Flutter Adaptive App – YouTube Playlist Explorer

This project is based on the official [Flutter Adaptive Apps Codelab](https://codelabs.developers.google.com/codelabs/flutter-adaptive-app).  
It demonstrates how to build a single Flutter application** that adapts seamlessly across all six supported platforms: Android, iOS, Web, Windows, macOS, and Linux.

## Features

- **Cross-platform UI**: Responsive layouts that adapt to mobile, desktop, and web environments.

- **YouTube Playlist Explorer**: Fetches and displays playlists using the YouTube Data API v3.
- **Adaptive Layouts**:

  - Mobile: Single-column navigation.

  - Desktop: Split-view with playlists on the left and videos on the right.
  - Web: Selectable text and CORS proxy support for images.
- **Authentication**
:
  - Google Sign-In for Android, iOS, and Web.

  - `googleapis_auth` for Windows, macOS, and Linux.
  - Displays the authenticated user’s playlists after login.
- **Platform Detection**: Uses `dart:io`’s `Platform` and `Theme.of(context).platform` for adaptive decisions.
- **Proxy Server for Web**: Handles CORS issues when loading images in browsers.

## Tech Stack

- **Framework**: Flutter SDK

- **Languages**: Dart
- **Packages**:

  - `google_sign_in`, `extension_google_sign_in_as_googleapis_auth`

  - `googleapis_auth`
  - `url_launcher`
  - `split_view`
- **APIs**: YouTube Data API v3, Google OAuth 2.0

## How It Works

1. Start with a mobile-first Flutter app that lists YouTube playlists.

2. Adapt the layout for desktop with a split-view interface.
3. Add web-specific adjustments (CORS proxy, selectable text).
4. Integrate Google authentication across all platforms.
5. Display the authenticated user’s playlists.

## Learning Outcomes

- How to scale a Flutter app from mobile to all supported platforms.

- Best practices for platform detection and adaptive widgets.
- Handling platform-specific authentication flows.
- Managing cross-platform API integrations.

## Credentials Setup

- **YouTube Data API Key** (initial mobile version).

- **OAuth 2.0 Client IDs** for Android, iOS, Web, and Desktop.
- SHA-1 fingerprint required for Android OAuth configuration.

## Next Steps

- Extend adaptive widgets for more complex layouts.

- Explore additional APIs and services.
- Deploy the app to production environments across platforms.

> Made with '\u{2665}' (♥) by Jesús Domínguez [@bluefeatherdev](https://github.com/bluefeatherdev)
