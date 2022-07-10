import 'package:flutter/material.dart';
import 'package:gpacalculate/components/constants.dart';
class GPAScreen extends StatelessWidget {
  const GPAScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(titleScreens[0],style:appBarStyle),
      ),
      body: null,
    );
  }
}
