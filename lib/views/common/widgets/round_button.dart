import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  const RoundButton({
    super.key,
    required this.onPress,
  });
  final Function() onPress;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.all(20),
            shape: const CircleBorder(),
            backgroundColor: Colors.lightBlue),
        onPressed: onPress,
        child: const Icon(
          Icons.arrow_forward_ios_rounded,
          color: Colors.white,
        ));
  }
}
