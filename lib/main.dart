import 'package:flutter/material.dart';

void main() {
  runApp(const StudentProfileApp());
}

class StudentProfileApp extends StatelessWidget {
  const StudentProfileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Student Profile',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        useMaterial3: true,
      ),
      home: const StudentProfilePage(),
    );
  }
}

class StudentProfilePage extends StatefulWidget {
  const StudentProfilePage({super.key});

  @override
  State<StudentProfilePage> createState() => _StudentProfilePageState();
}

class _StudentProfilePageState extends State<StudentProfilePage> {
  bool showAcademicInfo = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Student Profile',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.info_outline),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Welcome to Hartley\'s Student Profile!'),
                ),
              );
            },
          ),
        ],
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // Profile Header
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [Colors.indigo, Colors.blueAccent],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  const CircleAvatar(
                    radius: 55,
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.person,
                      size: 65,
                      color: Colors.indigo,
                    ),
                  ),

                  const SizedBox(height: 15),

                  const Text(
                    'Hartley Adona',
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),

                  const SizedBox(height: 5),

                  const Text(
                    '"Time is Gold"',
                    style: TextStyle(
                      fontSize: 15,
                      fontStyle: FontStyle.italic,
                      color: Colors.white70,
                    ),
                  ),

                  const SizedBox(height: 15),

                  ElevatedButton.icon(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Thanks for visiting my profile!'),
                        ),
                      );
                    },
                    icon: const Icon(Icons.waving_hand),
                    label: const Text('Say Hello'),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // Personal Information
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Personal Information',
                style: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 10),

            Card(
              elevation: 3,
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Column(
                  children: const [
                    ListTile(
                      leading: Icon(Icons.person),
                      title: Text('Full Name'),
                      subtitle: Text('Hartley Adona'),
                    ),
                    Divider(),
                    ListTile(
                      leading: Icon(Icons.badge),
                      title: Text('Nickname'),
                      subtitle: Text('Hartley'),
                    ),
                    Divider(),
                    ListTile(
                      leading: Icon(Icons.cake),
                      title: Text('Age / Birthday'),
                      subtitle: Text('20 years old • March 27, 2006'),
                    ),
                    Divider(),
                    ListTile(
                      leading: Icon(Icons.location_on),
                      title: Text('Address'),
                      subtitle: Text('Cabuyao City, Laguna'),
                    ),
                    Divider(),
                    ListTile(
                      leading: Icon(Icons.directions_run),
                      title: Text('Hobby'),
                      subtitle: Text('Running'),
                    ),
                    Divider(),
                    ListTile(
                      leading: Icon(Icons.school),
                      title: Text('Course / Year / Section'),
                      subtitle: Text('Information Technology • 3 IT-A'),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 20),

            // Academic Information
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Academic Information',
                  style: TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      showAcademicInfo = !showAcademicInfo;
                    });
                  },
                  child: Text(showAcademicInfo ? 'Hide' : 'Show'),
                ),
              ],
            ),

            const SizedBox(height: 5),

            if (showAcademicInfo)
              Card(
                elevation: 3,
                child: Column(
                  children: const [
                    ListTile(
                      leading: Icon(Icons.book),
                      title: Text('Favorite Subject'),
                      subtitle: Text('Mobile Application Development'),
                    ),
                    Divider(),
                    ListTile(
                      leading: Icon(Icons.code),
                      title: Text('Programming Language'),
                      subtitle: Text('Dart'),
                    ),
                    Divider(),
                    ListTile(
                      leading: Icon(Icons.design_services),
                      title: Text('Technical Skill'),
                      subtitle: Text('UI/UX Design'),
                    ),
                    Divider(),
                    ListTile(
                      leading: Icon(Icons.work),
                      title: Text('Career Goal'),
                      subtitle: Text('Mobile Application Developer'),
                    ),
                    Divider(),
                    ListTile(
                      leading: Icon(Icons.lightbulb),
                      title: Text('Academic Interest'),
                      subtitle: Text('Mobile and Web Technologies'),
                    ),
                  ],
                ),
              ),

            const SizedBox(height: 20),

            // About Me
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.indigo.withValues(alpha: 0.08),
                borderRadius: BorderRadius.circular(16),
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'About Me',
                    style: TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'I am a third-year Information Technology student '
                    'who enjoys running and learning about mobile and web '
                    'technologies. I am interested in creating useful and '
                    'user-friendly applications while continuously improving '
                    'my technical skills.',
                    style: TextStyle(
                      fontSize: 15,
                      height: 1.5,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 25),

            // Footer
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.favorite, size: 18),
                SizedBox(width: 6),
                Text(
                  'Keep learning. Keep improving.',
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
              ],
            ),

            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}