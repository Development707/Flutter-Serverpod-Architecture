import 'package:flutter/material.dart';
import 'package:serverpod_architecture_shared/serverpod_architecture_shared.dart';

import '../main.dart';

class SerializationPage extends StatefulWidget {
  const SerializationPage({super.key});

  @override
  State<SerializationPage> createState() => _SerializationPageState();
}

class _SerializationPageState extends State<SerializationPage> {
  ClassName? _className;
  FreezedCustomClass? _freezedCustomClass;

  @override
  void initState() {
    super.initState();
    client.example.getCustomClass().then((value) => setState(() {
          _className = value;
        }));
    client.example.getFreezedCustomClass().then((value) => setState(() {
          _freezedCustomClass = value;
        }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Serialization page')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('$_className - name: ${_className?.name}'),
            Text(_freezedCustomClass.toString()),
          ],
        ),
      ),
    );
  }
}
