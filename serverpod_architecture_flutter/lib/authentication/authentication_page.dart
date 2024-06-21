import 'package:flutter/material.dart';
import 'package:serverpod_auth_apple_flutter/serverpod_auth_apple_flutter.dart';
import 'package:serverpod_auth_email_flutter/serverpod_auth_email_flutter.dart';
import 'package:serverpod_auth_google_flutter/serverpod_auth_google_flutter.dart';

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
          const SizedBox(height: 16),
          SignInWithGoogleButton(
            caller: client.modules.auth,
            serverClientId: const String.fromEnvironment(
                'YOUR_SERVER_CLIENT_ID'), // needs to be supplied for the web integration
            redirectUri: Uri.parse('http://localhost:8082/googlesignin'),
          ),
          const SizedBox(height: 16),
          SignInWithAppleButton(
            caller: client.modules.auth,
          ),
        ],
      ),
    );
  }
}
