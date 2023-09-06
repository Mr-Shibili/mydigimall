import 'package:flutter/material.dart';

class CustomDropDown extends StatelessWidget {
  const CustomDropDown({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
        decoration: BoxDecoration(
            boxShadow: [BoxShadow(blurRadius: .01)],
            color: Colors.white,
            borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: DropdownButtonFormField(
            dropdownColor: Colors.white,
            hint: const Text('Kozhikode'),
            decoration: InputDecoration(
                fillColor: Colors.white,
                border: InputBorder.none,
                filled: true,
                prefixIcon: Icon(Icons.location_on),
                prefixIconColor: Colors.red),
            items: const [
              DropdownMenuItem(
                value: "menuone",
                child: Text(
                  "Kozhikode",
                  style: TextStyle(color: Colors.black),
                ),
              )
            ],
            onChanged: (value) {},
            isExpanded: true, //make true to take width of parent widget
            //empty line
            style: const TextStyle(fontSize: 18, color: Colors.white),
          ),
        ));
  }
}
