import 'package:chat_apk/components/auth_form.dart';
import 'package:chat_apk/core/services/notification/chat_notification_service.dart';
import 'package:chat_apk/pages/auth_or_app_page.dart';
import 'package:chat_apk/pages/auth_page.dart';
import 'package:chat_apk/pages/loading_pages.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ChatNotificationService(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: AuthOrAppPage(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}


