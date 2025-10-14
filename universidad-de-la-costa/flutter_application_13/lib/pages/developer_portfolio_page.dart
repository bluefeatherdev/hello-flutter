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
    {'name': 'Kubernetes', 'logo': 'kubernetes.png'},
    {'name': 'Git', 'logo': 'git.png'},
    {'name': 'Github', 'logo': 'github.png'},
    {'name': 'Github Copilot', 'logo': 'github-copilot.png'},
    {'name': 'VS Code', 'logo': 'vscode.png'},
  ];

  final List<Map<String, dynamic>> experience = const [
    {
      'startYear': 2025,
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
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    CircleAvatar(
                      radius: 75,
                      backgroundImage: AssetImage(
                        'assets/images/bluefeatherdev.jpg',
                      ),
                    ),
                    Column(
                      children: <Text>[
                        Text(
                          'Jesús Domínguez',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text('Mobile Developer'),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'I\'m a Software Engineering student. I\'m dedicated to cross-platform mobile development. I create applications that connect people, simplify the way they share meaningful information, and help them organize their lives more effectively.',
                    textAlign: TextAlign.justify,
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue.shade800,
                    ),
                    child: Text(
                      'Contact me',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                SizedBox(
                  width: double.infinity,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Skills',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 116,
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
          Expanded(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, bottom: 8.0),
                  child: SizedBox(
                    width: double.infinity,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Experience',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
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
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Image.asset('assets/logos/$logo', width: 50),
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
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            '$startYear',
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w200),
          ),
          Text(
            role,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
          Text(
            organization,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
          ),
        ],
      ),
    );
  }
}
