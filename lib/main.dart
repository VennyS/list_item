import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:list_item/list_item.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Main(),
    );
  }
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      ListItem(
          title: Text(
            "Title",
            style: GoogleFonts.inter(
              color: const Color(0xFF1F2024),
              fontWeight: FontWeight.w400,
              fontSize: 14,
            ),
          ),
          description: Text(
            "Description. Lorem ipsum dolor sit amet consectetur adipiscing elit, sed do",
            style: GoogleFonts.inter(
              color: const Color(0xFF71727A),
              fontWeight: FontWeight.w400,
              fontSize: 12,
            ),
          ))
    ]));
  }
}
