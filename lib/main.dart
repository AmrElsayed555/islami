import 'package:flutter/material.dart';
import 'package:islami_1/home/home_screen.dart';
import 'package:islami_1/home/quran_details/quran_details.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        cardTheme: CardTheme(
          surfaceTintColor: Colors.white,
          color: Colors.white,
          elevation: 15,
          margin: EdgeInsets.all(20),
        ),


        appBarTheme: AppBarTheme(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          titleTextStyle: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 30, color: Colors.black),
        ),


        scaffoldBackgroundColor: Colors.transparent,
        dividerColor: Color(0xffB7935F),
        dividerTheme: DividerThemeData(
          color: Color(0xffB7935F),
          thickness: 2
        ),


        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Color(0xffB7935F),
          selectedItemColor: Colors.black,
          selectedIconTheme: IconThemeData(
            color: Colors.black,
                size: 25
          ),
          unselectedIconTheme: IconThemeData(
            color: Colors.white,
            size: 25,
          ),
        ),



        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          primary: Color(0xffB7935F),
          secondary: Color(0xffB7935F).withOpacity(0.57),
          onPrimary:Colors.white,
          onSecondary: Colors.black,

        ),
      ),


      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (_) => HomeScreen(),
        QuranDetails.routeName :(_)=> QuranDetails(),
      },
    );
  }
}

