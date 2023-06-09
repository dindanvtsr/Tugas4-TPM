import 'package:flutter/material.dart';
import 'package:tugas4/login.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daftar Anggota'),
        backgroundColor: Colors.teal,
      ),
      body: Container(
        child: Center(
          child: Card(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
              side: BorderSide(
                color: Colors.teal,
              )
            ),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(height: 10),
                  const CircleAvatar(
                    backgroundImage: AssetImage(
                        'assets/caca.jpg'
                    ),
                    radius: 50,
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    'Ernisa Rahma Wahyuni',
                    style:
                    TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    '123200003',
                    style: TextStyle(fontSize: 18),
                  ),
                  const SizedBox(height: 30),
                  const CircleAvatar(
                    backgroundImage: AssetImage(
                        'assets/dinda.jpg'
                    ),
                    radius: 50,
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    'Dinda Aisyah Novitasari',
                    style:
                    TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    '123200006',
                    style: TextStyle(fontSize: 18),
                  ),
                  const SizedBox(height: 15),
                ],
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(
                builder: (context) => const LoginPage(),
              ),
                  (Route<dynamic> route) => false);
        },
        tooltip: 'Logout',
        child: const Icon(Icons.logout_rounded),
        backgroundColor: Colors.teal,
      ),
    );
  }
}
