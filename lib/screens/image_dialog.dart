import 'package:flutter/material.dart';

class ImageDialog extends StatelessWidget {
  final String imageUrl;

  const ImageDialog({Key? key, required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Container(
        child: Image.asset(
          'assets/images/magazine1.jpg',
          fit: BoxFit.cover,
        ),
      ),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            Navigator.of(context).pop(true);
          },
          child: const Text('Close'),
        ),
      ],
    );
  }
}
