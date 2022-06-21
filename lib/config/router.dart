import 'package:flutter/material.dart';
import 'package:habitos/screens/add_reminder_screen.dart';
import 'package:habitos/screens/feed_screen.dart';

class CustomRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case "feedScreen":
        return MaterialPageRoute(builder: (context) => FeedScreen(), settings: settings);
      case "addReminder":
        return MaterialPageRoute(builder: (context) => const AddReminderScreen(), settings: settings);
      default:
        return _errorRoute();
    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(
        settings: const RouteSettings(
          name: '/error',
        ),
        builder: (_) => Scaffold(
              appBar: AppBar(
                title: const Text("Our Fault"),
              ),
              body: const Center(child: Text('Oopss...Sorry, but something went wrong')),
            ));
  }
}
