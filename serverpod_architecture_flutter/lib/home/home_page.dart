import 'package:flutter/material.dart';

import '../main.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  // These fields hold the last result or error message that we've received from
  // the server or null if no result exists yet.
  String? _resultMessage;
  String? _errorMessage;

  final _textEditingController = TextEditingController();

  // Calls the `hello` method of the `example` endpoint. Will set either the
  // `_resultMessage` or `_errorMessage` field, depending on if the call
  // is successful.
  void _callHello() async {
    try {
      final result = await client.example.hello(_textEditingController.text);
      setState(() {
        _errorMessage = null;
        _resultMessage = result;
      });
    } catch (e) {
      setState(() {
        _errorMessage = '$e';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: TextField(
                controller: _textEditingController,
                decoration: const InputDecoration(
                  hintText: 'Enter your name',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: ElevatedButton(
                onPressed: _callHello,
                child: const Text('Send to Server'),
              ),
            ),
            _ResultDisplay(
              resultMessage: _resultMessage,
              errorMessage: _errorMessage,
            ),
          ],
        ),
      ),
    );
  }
}

// _ResultDisplays shows the result of the call. Either the returned result from
// the `example.hello` endpoint method or an error message.
class _ResultDisplay extends StatelessWidget {
  final String? resultMessage;
  final String? errorMessage;

  const _ResultDisplay({
    this.resultMessage,
    this.errorMessage,
  });

  @override
  Widget build(BuildContext context) {
    String text;
    Color backgroundColor;
    if (errorMessage != null) {
      backgroundColor = Colors.red[300]!;
      text = errorMessage!;
    } else if (resultMessage != null) {
      backgroundColor = Colors.green[300]!;
      text = resultMessage!;
    } else {
      backgroundColor = Colors.grey[300]!;
      text = 'No server response yet.';
    }

    return Container(
      height: 50,
      color: backgroundColor,
      child: Center(
        child: Text(text),
      ),
    );
  }
}
