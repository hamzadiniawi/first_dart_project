import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    void _handleButtonPress(String language) {
      print("Réponse: $language");
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Ma Première Application Flutter'),
        ),
        
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Custom Text Widget
            const Text(
              'Quel est ton langage de programmation favori ?',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 30,
              ),
            ),
            
            // Display Image
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Image.asset("lib/images/coding.jpg"),
            ),

            // Button with Custom Message
            ElevatedButton(
              onPressed: () {
                _handleButtonPress('Python');
              },
              child: const Text('Python'),
            ),
            ElevatedButton(
              onPressed: () {
                _handleButtonPress('Java');
              },
              child: const Text('Java'),
            ),
          ],
        ),
      ),
    );
  }
}
