import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey[600],
        body: SafeArea(
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            profileIcon(),
            mainTitle(),
            mainSubtitle(),
            const SizedBox(height: 35),
            textBox('pedro.bonel@gmail.com', Icons.mail),
            textBox('github.com/HGBPedro', Icons.public)
          ],
        )),
      ),
    );
  }

  Text mainTitle() {
    return const Text(
      'Pedro H G Bonel',
      style: TextStyle(
          fontFamily: 'Satisfy',
          fontSize: 35,
          color: Colors.white,
          fontWeight: FontWeight.bold),
    );
  }

  Text mainSubtitle() {
    return const Text(
      'Front-end developer',
      style: TextStyle(
        fontFamily: 'Edu',
        fontSize: 20,
        color: Colors.tealAccent,
      ),
    );
  }

  Container profileIcon() {
    return Container(
        margin: const EdgeInsets.all(20),
        child: const CircleAvatar(
          backgroundImage: AssetImage('lib/assets/eu.jpeg'),
          radius: 75,
        ));
  }

  Card textBox(String content, IconData icon) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 50),
      color: Colors.tealAccent,
      child: Padding(
          padding: const EdgeInsets.all(5),
          child: ListTile(
            leading: Icon(icon, color: Colors.blueGrey[600]),
            title: Text(
              content,
              style: const TextStyle(
                  fontFamily: 'Edu', fontSize: 20, color: Colors.blueGrey),
            ),
          )),
    );
  }
}
