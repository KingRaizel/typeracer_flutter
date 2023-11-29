import 'package:flutter/material.dart';
import 'package:typeracer_game/screens/createroom_screen.dart';
import 'package:typeracer_game/screens/homescreen.dart';
import 'package:typeracer_game/screens/joinroom_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Typeracer',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/create-room': (context) => const CreateRoomScreen(),
        '/join-room': (context) => const JoinRoomScreen(),
      },
    );
  }
}
