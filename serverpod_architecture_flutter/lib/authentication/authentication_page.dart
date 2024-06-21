import 'package:flutter/material.dart';
import 'package:serverpod_auth_email_flutter/serverpod_auth_email_flutter.dart';

import '../main.dart';
import 'custom_email_auth_ui.dart';

class AuthenticationPage extends StatelessWidget {
  const AuthenticationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Authentication page')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const CustomEmailAuthUI(),
          const SizedBox(height: 16),
          SignInWithEmailButton(
            caller: client.modules.auth,
            onSignedIn: () {
              // Optional callback when user successfully signs in
            },
          ),
        ],
      ),
    );
  }
}
