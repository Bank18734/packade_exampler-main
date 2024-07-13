import 'package:flutter/material.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Us'),
      ),
      body: Container(
        child: Column(
          children: [Text('About Us'), Text("lorem ipsum dolor sit amet")],
        ),
      ),
    );
  }
}
