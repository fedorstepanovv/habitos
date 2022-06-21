import 'package:flutter/material.dart';

class AddReminderScreen extends StatelessWidget {
  const AddReminderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(
              Icons.backspace_rounded,
              color: Colors.white,
            )),
        title: Text("ADD reminder"),
      ),
    );
  }
}
