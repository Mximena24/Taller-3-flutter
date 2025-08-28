import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/profile_page.dart';

class HomePage extends StatelessWidget {
  const HomePage ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text ("Home"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // centra verticalmente
          children: [
            Container(
              height: 200,
              margin: const EdgeInsets.all(10.0),
              color: Colors.grey[300], // solo para visualizarlo
              // child: const Center(child: Text('Aquí va algo')),
            ),
            ElevatedButton(
              child: const Text("Ver Perfil"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ProfilePage(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

