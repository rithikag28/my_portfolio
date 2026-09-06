import 'package:flutter/material.dart';

void main() {
  runApp(const MyPortfolioApp());
}

class MyPortfolioApp extends StatelessWidget {
  const MyPortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Portfolio',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const HomePage(),
    );
  }
}

// ==================== HOME PAGE ====================

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My Portfolio',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF3F51B5),
        elevation: 0,
      ),

      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(25),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              // Profile circle
              CircleAvatar(
                radius: 70,
                backgroundColor: Colors.indigo.shade100,
                child: Icon(
                  Icons.person,
                  size: 70,
                  color: Colors.indigo.shade700,
                ),
              ),

              const SizedBox(height: 25),

              // Name
              const Text(
                'Rithika Gudimalla',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF283593),
                ),
              ),

              const SizedBox(height: 10),

              // Role
              Text(
                'B.Tech CSE (AI & ML) Student',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey.shade700,
                ),
              ),

              const SizedBox(height: 40),

              // About Me button
              SizedBox(
                width: 220,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF3F51B5),
                    foregroundColor: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const AboutMePage(),
                      ),
                    );
                  },
                  child: const Text(
                    'About Me',
                    style: TextStyle(fontSize: 17),
                  ),
                ),
              ),

              const SizedBox(height: 15),

              // Projects button
              SizedBox(
                width: 220,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF3F51B5),
                    foregroundColor: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ProjectsPage(),
                      ),
                    );
                  },
                  child: const Text(
                    'Projects',
                    style: TextStyle(fontSize: 17),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ==================== ABOUT ME PAGE ====================

class AboutMePage extends StatelessWidget {
  const AboutMePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'About Me',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF3F51B5),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(25),

        child: Column(
          children: [

            // About Me heading
            const Text(
              'About Me',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Color(0xFF283593),
              ),
            ),

            const SizedBox(height: 25),

            // About Me description
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(25),
              decoration: BoxDecoration(
                color: Colors.indigo.shade50,
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Text(
                'Hi, I’m Rithika, a B.Tech student interested in Artificial Intelligence and Machine Learning. I enjoy learning new technologies, working on projects, and improving my programming skills. I’m always looking for opportunities to learn and gain practical experience.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 17,
                  height: 1.6,
                ),
              ),
            ),

            const SizedBox(height: 40),

            // Skills heading
            const Text(
              'Skills',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Color(0xFF283593),
              ),
            ),

            const SizedBox(height: 20),

            // Skills boxes
            Wrap(
              spacing: 15,
              runSpacing: 15,
              alignment: WrapAlignment.center,
              children: [
                skillBox('Python'),
                skillBox('Java'),
                skillBox('C'),
                skillBox('Flutter'),
                skillBox('Dart'),
                skillBox('Machine Learning'),
                skillBox('HTML & CSS'),
                skillBox('Git & GitHub'),
                skillBox('Figma'),
              ],
            ),

            const SizedBox(height: 40),

            // Back button
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF3F51B5),
                foregroundColor: Colors.white,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Back to Home'),
            ),
          ],
        ),
      ),
    );
  }

  static Widget skillBox(String skill) {
    return Container(
      width: 150,
      padding: const EdgeInsets.symmetric(
        vertical: 15,
        horizontal: 10,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: Colors.indigo.shade200,
        ),
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            blurRadius: 5,
          ),
        ],
      ),
      child: Text(
        skill,
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w500,
          color: Color(0xFF283593),
        ),
      ),
    );
  }
}

// ==================== PROJECTS PAGE ====================

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My Projects',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF3F51B5),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),

        child: Column(
          children: [

            // Heart Disease Prediction
            projectCard(
              title: 'Heart Disease Prediction',
              description:
                  'A machine learning project that predicts the possibility of heart disease using relevant patient data.',
              icon: Icons.favorite,
            ),

            // Course Recommendation System
            projectCard(
              title: 'Course Recommendation System',
              description:
                  'A recommendation system that suggests relevant courses using machine learning and TF-IDF techniques.',
              icon: Icons.school,
            ),

            // Library Management System
            projectCard(
              title: 'Library Management System',
              description:
                  'A system designed to manage books, students, borrowing, returning, and other library activities efficiently.',
              icon: Icons.library_books,
            ),

            const SizedBox(height: 20),

            // Back button
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF3F51B5),
                foregroundColor: Colors.white,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Back to Home'),
            ),
          ],
        ),
      ),
    );
  }

  static Widget projectCard({
    required String title,
    required String description,
    required IconData icon,
  }) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 20),
      padding: const EdgeInsets.all(20),

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: Colors.indigo.shade100,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            blurRadius: 8,
            spreadRadius: 1,
          ),
        ],
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Row(
            children: [

              Icon(
                icon,
                color: Colors.indigo,
                size: 30,
              ),

              const SizedBox(width: 12),

              Expanded(
                child: Text(
                  title,
                  style: const TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF283593),
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 15),

          Text(
            description,
            style: TextStyle(
              fontSize: 15,
              height: 1.5,
              color: Colors.grey.shade700,
            ),
          ),
        ],
      ),
    );
  }
}