import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class CustomSearchField extends StatelessWidget {
  const CustomSearchField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(fontSize: 16),
      decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(10),
          suffixIcon: const Icon(
            Iconsax.search_normal,
            color: Color.fromARGB(255, 173, 160, 243),
          ),
          hintText: 'Search...',
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6),
              borderSide: const BorderSide(
                  width: 1, color: Color.fromARGB(255, 173, 160, 243))),
          border: OutlineInputBorder(
              borderSide:
                  const BorderSide(color: Color.fromARGB(255, 173, 160, 243)),
              borderRadius: BorderRadius.circular(6))),
    );
  }
}
