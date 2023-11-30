import 'package:flutter/material.dart';
import 'package:typeracer_game/utils/socket_methods.dart';
import 'package:typeracer_game/widgets/custom_textfield.dart';
import 'package:typeracer_game/widgets/custombutton.dart';

class CreateRoomScreen extends StatefulWidget {
  const CreateRoomScreen({super.key});

  @override
  State<CreateRoomScreen> createState() => _CreateRoomScreenState();
}

class _CreateRoomScreenState extends State<CreateRoomScreen> {
  final TextEditingController _namecontroller = TextEditingController();
  final SocketMethods _socketMethods = SocketMethods();

  @override
  void dispose() {
    super.dispose();
    _namecontroller.dispose();
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
                  "Create Room",
                  style: TextStyle(fontSize: 30),
                ),
                SizedBox(
                  height: size.height * 0.08,
                ),
                CustomTextField(
                    controller: _namecontroller,
                    hintText: 'Enter Your Nickname'),
                SizedBox(
                  height: size.height * 0.04,
                ),
                CustomButton(
                    text: 'Create',
                    onTap: () => _socketMethods.createGame(
                          _namecontroller.text,
                        )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
