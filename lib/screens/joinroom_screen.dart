import 'package:flutter/material.dart';
import 'package:typeracer_game/widgets/custom_textfield.dart';
import 'package:typeracer_game/widgets/custombutton.dart';

class JoinRoomScreen extends StatefulWidget {
  const JoinRoomScreen({super.key});

  @override
  State<JoinRoomScreen> createState() => _JoinRoomScreenState();
}

class _JoinRoomScreenState extends State<JoinRoomScreen> {
  final _namecontroller = TextEditingController();
  final _gamecontroller = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _namecontroller.dispose();
    _gamecontroller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 600),
          child: Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "Join Room",
                  style: TextStyle(fontSize: 30),
                ),
                SizedBox(
                  height: size.height * 0.08,
                ),
                CustomTextField(
                    controller: _namecontroller,
                    hintText: 'Enter Your Nickname'),
                SizedBox(
                  height: size.height * 0.03,
                ),
                CustomTextField(
                    controller: _gamecontroller, hintText: 'Enter Game ID'),
                SizedBox(
                  height: size.height * 0.06,
                ),
                CustomButton(text: 'Join', onTap: () {}),
              ],
            ),
          ),
        ),
      ),
    );
    ;
  }
}
