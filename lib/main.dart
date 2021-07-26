import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home:MyPrefilledText()));

class MyPrefilledText extends StatefulWidget {
  const MyPrefilledText({Key? key}) : super(key: key);

  @override
  _MyPrefilledTextState createState() => _MyPrefilledTextState();
}

class _MyPrefilledTextState extends State<MyPrefilledText> {
  late TextEditingController _textController;

  @override
  void initState() {
    super.initState();
    _textController = TextEditingController(text: 'initial text');
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoTextField(controller: _textController);
  }
}