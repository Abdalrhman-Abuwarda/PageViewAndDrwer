import 'package:flutter/material.dart';
import 'package:mommen_page_view/secreens/main_screen/main_screen.dart';
import 'package:mommen_page_view/secreens/out_boarding_screen/outboarding_screen.dart';
import 'package:mommen_page_view/secreens/launch_screen.dart';
import 'package:mommen_page_view/themes/themes.dart';

void main()=> runApp(MyApp());
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: defaultTheme,
      debugShowCheckedModeBanner: false,
      initialRoute: '/launch_screen',
      routes: {
        '/launch_screen' : (context) => LaunchScreen(),
        '/out_boardung_screen' : (context) => OutBoardungScreen(),
        '/home_screen' : (context) => MainScreen(),
      }
    );
  }
}
