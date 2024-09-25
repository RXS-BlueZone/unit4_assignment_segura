import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Unit 4',
      theme: ThemeData(
        primaryColor: Colors.teal,
        scaffoldBackgroundColor: const Color.fromARGB(239, 245, 245, 245),
      ),
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Assignment for Unit 4'),
        centerTitle: true,
        foregroundColor: Colors.white,
        backgroundColor: Colors.teal,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none, //  z-index control
              children: [
                // Background image layer
                Container(
                  width: double.infinity,
                  height: 280.0,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('lib/assets/bg2.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                Positioned(
                  top: 155.0,
                  left: 20.0,
                  child: Container(
                    width: 220,
                    height: 220,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: const Offset(0, 3),
                        ),
                      ],
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.white,
                        width: 5.0,
                      ),
                    ),
                    child: const CircleAvatar(
                      backgroundImage: AssetImage('lib/assets/profile.jpg'),
                    ),
                  ),
                ),

                // Profile information
                const Positioned(
                  top: 285.0,
                  left: 260.0,
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'Paul Justin',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87,
                            ),
                          ),
                          SizedBox(width: 10.0),
                          Text(
                            'Acullador Segura',
                            style:
                                TextStyle(fontSize: 24, color: Colors.black87),
                          ),
                          SizedBox(width: 15.0),
                          Icon(Icons.waving_hand,
                              color: Colors.teal, size: 35.0),
                        ],
                      ),
                      SizedBox(height: 2.5),
                      Text(
                        'Hello! Nice to meet you!',
                        style: TextStyle(fontSize: 18, color: Colors.black54),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 105,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Information section
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.all(16.0),
                    padding: const EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: const Color.fromARGB(255, 200, 200, 200)
                              .withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 5,
                          offset: const Offset(1, 1),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        InfoRow(Icons.email, 'Email',
                            'pauljustin.segura@wvsu.edu.ph'),
                        InfoRow(Icons.cake, 'Date of Birth', 'January 9, 2003'),
                        InfoRow(Icons.work, 'Course',
                            'Bachelor of Science in Information Technology'),
                        InfoRow(Icons.school, 'Education',
                            'West Visayas State University'),
                        InfoRow(Icons.gamepad, 'Hobbies',
                            'Listening to Music, Gaming, Photography, Cars'),
                        //   InfoRow(
                        //       Icons.language, 'Languages', 'English, Tagalog'),
                      ],
                    ),
                  ),
                ),

                // Biography section
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.all(16.0),
                    padding: const EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 5,
                          offset: const Offset(1, 1),
                        ),
                      ],
                    ),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'My Biography',
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'I am a 21-year-old third-year student pursuing a Bachelor of Science in Information Technology at West Visayas State University. With a strong passion for technology and innovation, I am always eager to expand my knowledge and stay updated on the latest advancements in the field. While I’m not currently involved in many projects, I am actively seeking opportunities that will allow me to apply and refine my skills. Balancing my academic responsibilities with personal growth is important to me, as I believe in constantly challenging myself to improve both academically and personally.',
                          style: TextStyle(fontSize: 16),
                          textAlign: TextAlign.justify,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// For displaying information row
class InfoRow extends StatelessWidget {
  final IconData icon;
  final String title;
  final String data;

  InfoRow(this.icon, this.title, this.data);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Icon(icon, color: Colors.teal),
          const SizedBox(width: 16),
          Expanded(
            child: Text(
              title,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            flex: 4,
            child: Text(
              data,
              style: const TextStyle(fontSize: 16),
              textAlign: TextAlign.start,
            ),
          ),
        ],
      ),
    );
  }
}
