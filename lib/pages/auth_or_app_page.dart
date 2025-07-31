import 'package:chat_apk/core/models/chat_user.dart';
import 'package:chat_apk/core/services/auth/auth_service.dart';
import 'package:chat_apk/core/services/notification/chat_notification_service.dart';
import 'package:chat_apk/pages/auth_page.dart';
import 'package:chat_apk/pages/chat_page.dart';
import 'package:chat_apk/pages/loading_pages.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';

class AuthOrAppPage extends StatelessWidget {
  const AuthOrAppPage({Key? key}) : super(key: key);

  Future<void> init(BuildContext context) async {
    await Firebase.initializeApp();
    await Provider.of<ChatNotificationService>(
      context,
      listen: false,
    ).init();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: init(context),
        builder: (ctx, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return LoadingPage();
          } else {
            return StreamBuilder<ChatUser?>(
                stream: AuthService().userChanges,
                builder: (ctx, user) {
                  if (user.connectionState == ConnectionState.waiting) {
                    return LoadingPage();
                  } else {
                    return user.hasData ? ChatPage() : AuthPage();
                  }
                });
          }
        });
  }
}
