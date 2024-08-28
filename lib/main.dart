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
              
                showVisual: true,
                
                title: Text(
                  "Title",
                  style: TextStyles.interRegular14,
                ),
                
                description: Text(
                  "Description. Lorem ipsum dolor sit amet consectetur adipiscing elit, sed do",
                  style: TextStyles.interRegular12,
                ),
              
                control: CupertinoSwitch(
                  value: _switchValue1,
                  onChanged: (bool newValue) {
                    setState(() {
                      _switchValue1 = newValue;
                    });
                  },
                ),
                showControl: true,
                ),
              
            ListItem(
              visual: Image.asset(
                'lib/assets/images/image1.png',
                width: 24.0,
                height: 24.0,
                
              ),
              showVisual: true,
              title: Text(
                "Title",
                style: TextStyles.interRegular14,
              ),
              description: Text(
                "Description. Lorem ipsum dolor sit amet consectetur adipiscing elit, sed do",
                style: TextStyles.interRegular12,
              ),
              control: 
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
              showControl: true,
              ),
                
            ListItem(
              visual: Image.asset(
                  'lib/assets/images/image1.png',
                  width: 24.0,
                  height: 24.0,
              ),
              showVisual: true,
              title: Text(
                "Title",
                style: TextStyles.interRegular14,
              ),
              description: Text(
                "Description. Lorem ipsum dolor sit amet consectetur adipiscing elit, sed do",
                style: TextStyles.interRegular12,
              ),
              control: CupertinoCheckbox(
                value: _switchValue2,
                onChanged: (bool? newValue) {
                  setState(() {
                    _switchValue2 = newValue!;
                  });
                },
              ),
              showControl: true,
              ),
            ListItem(
              visual: const Icon(
                Icons.favorite,
                color: Colors.blue,
              ),
            
              showVisual: true,
              
              title: Text(
                "Title",
                style: TextStyles.interRegular14,
              ),
              
              description: Text(
                "Description. Lorem ipsum dolor sit amet consectetur adipiscing elit, sed do",
                style: TextStyles.interRegular12,
              ),
            
              control: new IconButton(
                  icon: new Icon(Icons.navigate_next),
                  onPressed: () { /* */ },
                  ),
                
              showControl: true,
              ),
        // Row(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: [
        //     BadgeWidget(
        //       mainWidget: Text(
        //         "9",
        //         style: GoogleFonts.inter(
        //             fontWeight: FontWeight.w600,
        //             fontSize: 10,
        //             color: Colors.white),
        //       ),
        //       backgroundColor: const Color(0xFF006FFD),
        //     ),
        //     const SizedBox(
        //       width: 4,
        //     ),
        //     const BadgeWidget(
        //       variant: BadgeVariant.icon,
        //       mainWidget: Icon(
        //         Icons.check,
        //         size: 8,
        //         color: Colors.white,
        //       ),
        //       backgroundColor: Color(0xFF006FFD),
        //     ),
        //     const SizedBox(
        //       width: 4,
        //     ),
        //     // BadgeWidget(
        //     //   variant: BadgeVariant.empty,
        //     //   backgroundColor: const Color(0xFF006FFD),
        //     // ),
        //   ],
        // ),
        // const SizedBox(
        //   height: 4,
        // ),
        // // Чтобы уменьшать купертиновские виджеты можно использовать Transform.scale
        // CupertinoCheckbox(
        //   value: false,
        //   onChanged: (_) {},
        // ),
        // const SizedBox(
        //   height: 4,
        // ),
        // Transform.scale(
        //   scale: 0.5,
        //   child: CupertinoSwitch(value: true, onChanged: (_) {}),
        // )
      ],
    ));
  }
}
