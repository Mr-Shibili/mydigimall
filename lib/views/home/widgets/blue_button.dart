import 'package:flutter/material.dart';

class CustomBlueButton extends StatelessWidget {
  const CustomBlueButton({
    super.key,
    required this.icon,
    required this.text,
    required this.onTap,
  });
  final Icon icon;
  final String text;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.lightBlue, borderRadius: BorderRadius.circular(10)),
      child: ListTile(
        onTap: onTap,
        leading: icon,
        title: Text(
          text,
          style: const TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
    );
  }
}
