import 'package:flutter/material.dart';
import 'package:habitos/screens/feed_screen.dart';

import 'config/router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  static final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  //КЛЮЧ
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      key: navigatorKey,
      title: 'Flutter Demo',
      theme: ThemeData(),
      onGenerateRoute: CustomRouter.onGenerateRoute,
      initialRoute: 'feedScreen',
      // home: FeedScreen(),
    );
  }
}
