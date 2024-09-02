import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:list_item/badge.dart';
import 'package:list_item/list_item.dart';
import 'styles/styles.dart';

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
      debugShowCheckedModeBanner: false,
      home: const Main(),
    );
  }
}

class Main extends StatefulWidget {
  const Main({super.key});

  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {
  bool _switchValue1 = true;
  bool _switchValue2 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ListItem(
            visual: const Icon(
              Icons.favorite,
              color: Colors.blue,
            ),
            title: Text(
              "Title",
              style: TextStyles.interRegular14,
            ),
            description: Text(
              "Description. Lorem ipsum dolor sit amet consectetur adipiscing elit, sed do",
              style: TextStyles.interRegular12,
            ),
            control: Transform.scale(
                scale: 0.8,
                child: CupertinoSwitch(
                  value: _switchValue1,
                  onChanged: (bool newValue) {
                    setState(() {
                      _switchValue1 = newValue;
                    });
                  },
                )),
          ),
          ListItem(
            visual: const Icon(
              Icons.favorite,
              color: Colors.blue,
            ),
            title: Text(
              "Title",
              style: TextStyles.interRegular14,
            ),
            description: Text(
              "Description. Lorem ipsum dolor sit amet consectetur adipiscing elit, sed do",
              style: TextStyles.interRegular12,
            ),
            control: Transform.scale(
                scale: 0.8,
                child: CupertinoSwitch(
                  value: _switchValue1,
                  onChanged: (bool newValue) {
                    setState(() {
                      _switchValue1 = newValue;
                    });
                  },
                )),
          ),
        ],
      ),
    );
  }
}
