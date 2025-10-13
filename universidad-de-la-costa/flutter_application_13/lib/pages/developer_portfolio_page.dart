// Universidad de la Costa - Computación Móvil - Flutter Application 13:
import 'package:flutter/material.dart';

class DeveloperPortfolioPage extends StatelessWidget {
  const DeveloperPortfolioPage({super.key});

  final List<Map<String, String>> skills = const [
    {'name': 'Flutter', 'logo': 'flutter.png'},
    {'name': 'Dart', 'logo': 'dart.png'},
    {'name': 'Firebase', 'logo': 'firebase.png'},
    {'name': 'Figma', 'logo': 'figma.png'},
    {'name': 'PostgreSQL', 'logo': 'postgresql.png'},
    {'name': 'Docker', 'logo': 'docker.png'},
    {'name': 'VS Code', 'logo': 'vscode.png'},
  ];

  final List<Map<String, dynamic>> experience = const [
    {
      'startYear': 2026,
      'role': 'Senior Flutter Developer',
      'organization': 'Google Developer Groups',
    },
    {
      'startYear': 2024,
      'role': 'Mobile Developer',
      'organization': 'Global Galaxy',
    },
    {
      'startYear': 2023,
      'role': 'Flutter Developer',
      'organization': 'Falabella',
    },
    {
      'startYear': 2022,
      'role': 'Mobile Development Intern',
      'organization': 'Endava',
    },
    {
      'startYear': 2021,
      'role': 'Junior Mobile Developer',
      'organization': 'Startup Labs',
    },
    {
      'startYear': 2020,
      'role': 'Software Development Trainee',
      'organization': 'Tech Academy',
    },
    {
      'startYear': 2019,
      'role': 'Programming Student Assistant',
      'organization': 'Universidad de la Costa',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Developer Portfolio Page')),
      body: Column(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Image.asset('assets/images/avatar.png'),
                    Column(
                      children: <Text>[
                        Text('Jesús Domínguez'),
                        Text('Mobile Developer'),
                      ],
                    ),
                  ],
                ),
                Text(
                  'I\'m a Software Engineering student. I\'m dedicated to cross-platform mobile development, learning technologies such as Flutter, Dart, and Firebase. I create applications that connect people, simplify the way they share meaningful information, and help them organize their lives more effectively.',
                ),
                ElevatedButton(onPressed: () {}, child: Text('Contact me')),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  Text('Skills'),
                  Expanded(
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: skills.length,
                      itemBuilder: (context, index) {
                        final item = skills[index];
                        return CustomSkillCard(
                          name: item['name']!,
                          logo: item['logo']!,
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Column(
              children: <Widget>[
                Text('Experience'),
                Expanded(
                  child: ListView.builder(
                    itemCount: experience.length,
                    itemBuilder: (context, index) {
                      final item = experience[index];
                      return CustomExperienceCard(
                        startYear: item['startYear'],
                        role: item['role'],
                        organization: item['organization'],
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CustomSkillCard extends StatelessWidget {
  final String name;
  final String logo;

  const CustomSkillCard({super.key, required this.name, required this.logo});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Expanded(child: Image.asset('assets/logos/$logo')),
          Text(name),
        ],
      ),
    );
  }
}

class CustomExperienceCard extends StatelessWidget {
  final int startYear;
  final String role;
  final String organization;

  const CustomExperienceCard({
    super.key,
    required this.startYear,
    required this.role,
    required this.organization,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[Text('$startYear'), Text(role), Text(organization)],
      ),
    );
  }
}
