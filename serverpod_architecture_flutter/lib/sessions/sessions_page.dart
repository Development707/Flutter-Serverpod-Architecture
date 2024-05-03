import 'package:flutter/material.dart';

import '../main.dart';

class SessionsPage extends StatefulWidget {
  const SessionsPage({super.key});

  @override
  State<SessionsPage> createState() => _SessionsPageState();
}

class _SessionsPageState extends State<SessionsPage> {
  String? _remoteIpAddress;

  @override
  void initState() {
    super.initState();
    client.example.getRemoteIpAddress().then((value) => setState(() {
          _remoteIpAddress = value;
        }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sessions page')),
      body: Center(
        child: Text(_remoteIpAddress.toString()),
      ),
    );
  }
}
