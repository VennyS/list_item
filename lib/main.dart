import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:list_item/badge.dart';
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
        body: Column(
      children: [
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
            )),
        const SizedBox(
          height: 8,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BadgeWidget(
              mainWidget: Text(
                "9",
                style: GoogleFonts.inter(
                    fontWeight: FontWeight.w600,
                    fontSize: 10,
                    color: Colors.white),
              ),
              backgroundColor: const Color(0xFF006FFD),
            ),
            const SizedBox(
              width: 4,
            ),
            const BadgeWidget(
              variant: BadgeVariant.icon,
              mainWidget: Icon(
                Icons.check,
                size: 8,
                color: Colors.white,
              ),
              backgroundColor: Color(0xFF006FFD),
            ),
            const SizedBox(
              width: 4,
            ),
            BadgeWidget(
              variant: BadgeVariant.empty,
              backgroundColor: const Color(0xFF006FFD),
            ),
          ],
        ),
        const SizedBox(
          height: 4,
        ),
        // Чтобы уменьшать купертиновские виджеты можно использовать Transform.scale
        CupertinoCheckbox(
          value: false,
          onChanged: (_) {},
        ),
        const SizedBox(
          height: 4,
        ),
        Transform.scale(
          scale: 0.5,
          child: CupertinoSwitch(value: true, onChanged: (_) {}),
        )
      ],
    ));
  }
}
