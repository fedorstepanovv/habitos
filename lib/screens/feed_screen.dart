import 'package:flutter/material.dart';
import 'package:habitos/models/reminder_model.dart';
import 'package:habitos/screens/add_reminder_screen.dart';
import 'package:habitos/widgets/reminder_widget.dart';

class FeedScreen extends StatelessWidget {
  final List<ReminderModel> _reminders = [
    ReminderModel("Buy something to eat", "Eat is healty", Colors.red),
    ReminderModel("Go to the gym", "Gym is important for me", Colors.green),
    ReminderModel("Go to the gym", "Gym is important for me", Colors.green),
    ReminderModel("Go fuck yourself", "Because u are an idiot", Colors.green),
    ReminderModel(
        "Go to the gym",
        "Gym is important for meffjfjfjfjfjfjffjfjfjfjfjfjfjfjfjfjfjjfjfj meffjfjfjfjfjfjffjfjfjfjfjfjfjfjfjfjfjjfjfjmeffjfjfjfjfjfjffjfjfjfjfjfjfjfjfjfjfjjfjfjmeffjfjfjfjfjfjffjfjfjfjfjfjfjfjfjfjfjjfjfjmeffjfjfjfjfjfjffjfjfjfjfjfjfjfjfjfjfjjfjfjmeffjfjfjfjfjfjffjfjfjfjfjfjfjfjfjfjfjjfjfjmeffjfjfjfjfjfjffjfjfjfjfjfjfjfjfjfjfjjfjfjmeffjfjfjfjfjfjffjfjfjfjfjfjfjfjfjfjfjjfjfjmeffjfjfjfjfjfjffjfjfjfjfjfjfjfjfjfjfjjfjfjmeffjfjfjfjfjfjffjfjfjfjfjfjfjfjfjfjfjjfjfjmeffjfjfjfjfjfjffjfjfjfjfjfjfjfjfjfjfjjfjfjmeffjfjfjfjfjfjffjfjfjfjfjfjfjfjfjfjfjjfjfjmeffjfjfjfjfjfjffjfjfjfjfjfjfjfjfjfjfjjfjfjmeffjfjfjfjfjfjffjfjfjfjfjfjfjfjfjfjfjjfjfj",
        Colors.green),
    ReminderModel("Go to the gym", "Gym is important for me", Colors.green),
    ReminderModel("Go to the gym", "Gym is important for me", Colors.green),
    ReminderModel("Go to the gym", "Gym is important for me", Colors.green),
    ReminderModel("Go to the gym", "Gym is important for me", Colors.green),
    ReminderModel("Go to the gym", "Gym is important for me", Colors.green),
    ReminderModel("Go to the gym", "Gym is important for me", Colors.green),
    ReminderModel("Go to the gym", "Gym is important for me", Colors.green),
    ReminderModel("Go to the gym", "Gym is important for me", Colors.green),
    ReminderModel("Go to the gym", "Gym is important for me", Colors.green),
    ReminderModel("Go to the gym", "Gym is important for me", Colors.green),
  ];
  FeedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1A1A1A),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xff1A1A1A),
        title: const Text(
          "Reminders",
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w600,
          ),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.shop,
            color: Color(0xff959595),
          ),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.add_circle_outline,
              color: Color(0xff959595),
            ),
            onPressed: () {
              Navigator.of(context).pushNamed('addReminder');
            },
          ),
        ],
        elevation: 0.0,
      ),
      body: ListView.builder(
        itemBuilder: (context, int index) {
          return ReminderWidget(
            title: _reminders[index].title,
            description: _reminders[index].description,
            customColor: _reminders[index].customColor,
          );
          //RETURN OUR NEW WIDGET TILE
        },
        itemCount: _reminders.length,
        //parameter: (context, int index) {
        //return something;
        //}
      ),
    );
  }
}
