import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:instagram_ui/modules/home/home_pag.dart';
import 'package:instagram_ui/modules/login/login_page.dart';
import 'package:instagram_ui/modules/search/search_page.dart';
import 'package:instagram_ui/modules/switch_account/switch_account.dart';
import 'package:instagram_ui/themes/app_color.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // white status bar
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.white,
        statusBarBrightness: Brightness.dark,
      )
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram UI Basic',
      initialRoute: '/',
      routes: {
        HomePage.routeName: (context) => HomePage(),
        SearchPage.routeName: (context) => SearchPage(),
        LoginPage.routeName: (context) => LoginPage(),
        SwitchAccountPage.routeName: (context) => SwitchAccountPage(),
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'montserrat',
        scaffoldBackgroundColor: DarkTheme.white,
        textTheme: Theme.of(context).textTheme.apply(
          bodyColor: DarkTheme.white,
          displayColor: DarkTheme.white
        )
      ),
      home: const LoginPage(),
    );
  }
}
