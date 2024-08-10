import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'views/calculator_view.dart';
import 'viewmodels/calculator_viewmodel.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CalculatorViewModel()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MVVM Calculator',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: CalculatorView(),
    );
  }
}
