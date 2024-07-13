import 'package:flutter/material.dart';

class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact Us'),
      ),
      body: Container(
        child: Column(
          children: [
            Text('Contact'),
            Text("lorem ipsum dolor sit amet,asdasd",)
          ],
        ),
      ),
    );
  }
}
