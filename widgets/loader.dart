import 'package:flutter/material.dart';

class Loader extends StatelessWidget {
  final String? text;

  const Loader({super.key, this.text = 'Loading...'});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(),
            SizedBox(height: 20),
            Text(text!),
          ],
        ),
      ),
    );
  }
}
