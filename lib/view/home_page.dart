import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:textfield_provider/controller/provider_controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen[700],
        title: const Text(
          'Text provider',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400),
        ),
      ),
      body: Consumer<TextProvider>(
        builder: (context, value, child) => Column(
          children: [
            TextField(
              controller: value.textcontroller,
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(onPressed: value.datas, child: const Text('Button')),
            Text(value.add),
          ],
        ),
      ),
    );
  }
}
