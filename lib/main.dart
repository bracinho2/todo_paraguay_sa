import 'package:flutter/material.dart';
import 'package:todo_paraguay_sa/app/module/search/presenter/pages/search_item_details.dart';
import 'package:todo_paraguay_sa/app/module/search/presenter/pages/search_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Todo Paraguay',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SearchPage(),
    );
  }
}
