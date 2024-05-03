import 'package:flutter/material.dart';
import 'package:serverpod_architecture_client/serverpod_architecture_client.dart';

import '../main.dart';

class ExceptionPage extends StatefulWidget {
  const ExceptionPage({super.key});

  @override
  State<ExceptionPage> createState() => _ExceptionPageState();
}

class _ExceptionPageState extends State<ExceptionPage> {
  CustomException? _error;

  @override
  void initState() {
    super.initState();
    client.example
        .doThingy()
        .onError<CustomException>((error, stackTrace) => setState(() {
              _error = error;
            }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Exception page')),
      body: Text(_error.toString()),
    );
  }
}
