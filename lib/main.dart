import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:textfield_provider/controller/provider_controller.dart';
import 'package:textfield_provider/view/home_page.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => TextProvider(),)],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
      ),
    );
  }
}