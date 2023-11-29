// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:typeracer_game/widgets/custombutton.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 600),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Create a room to play!!',
                style: TextStyle(fontSize: 24),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomButton(
                      text: 'Create',
                      onTap: () => Navigator.pushNamed(context, '/create-room'),
                      isHome: true),
                  CustomButton(
                      text: 'Join',
                      onTap: () => Navigator.pushNamed(context, '/join-room'),
                      isHome: true),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
