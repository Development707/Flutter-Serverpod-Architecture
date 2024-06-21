import 'package:flutter/material.dart';
import 'package:serverpod_auth_email_flutter/serverpod_auth_email_flutter.dart';

import '../main.dart';

class CustomEmailAuthUI extends StatefulWidget {
  const CustomEmailAuthUI({super.key});

  @override
  State<CustomEmailAuthUI> createState() => _CustomEmailAuthUIState();
}

class _CustomEmailAuthUIState extends State<CustomEmailAuthUI> {
  final authController = EmailAuthController(client.modules.auth);
  final usernameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListView(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        padding: const EdgeInsets.all(16),
        children: [
          TextField(
            controller: emailController,
            decoration: const InputDecoration(label: Text('Email')),
            keyboardType: TextInputType.emailAddress,
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () async {
              await authController.initiatePasswordReset(
                emailController.text,
              );
            },
            child: const Text('Forget password'),
          ),
          const SizedBox(height: 16),
          TextField(
            controller: passwordController,
            keyboardType: TextInputType.visiblePassword,
            decoration: InputDecoration(
              label: const Text('Password'),
              suffixIcon: IconButton(
                onPressed: () => setState(() => obscureText = !obscureText),
                icon: obscureText
                    ? const Icon(Icons.visibility)
                    : const Icon(Icons.visibility_off),
              ),
            ),
            obscureText: obscureText,
          ),
          const SizedBox(height: 16),
          FilledButton(
            onPressed: () async {
              await authController.signIn(
                emailController.text,
                passwordController.text,
              );
            },
            child: const Text('Sign in'),
          ),
          const SizedBox(height: 16),
          TextField(
            controller: usernameController,
            decoration: const InputDecoration(label: Text('Username')),
            keyboardType: TextInputType.name,
          ),
          const SizedBox(height: 16),
          FilledButton.tonal(
            onPressed: () async {
              await authController.createAccountRequest(
                usernameController.text,
                emailController.text,
                passwordController.text,
              );
            },
            child: const Text('Sign up'),
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
