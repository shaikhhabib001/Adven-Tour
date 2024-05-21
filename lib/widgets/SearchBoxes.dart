
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';



class Searchboxes {


  static TextField buildSearchTextfield(String labelText, {Function(dynamic value)? onChanged}) {
    TextEditingController lastNameController = TextEditingController();
    return TextField(
      onChanged: onChanged,
      style: const TextStyle(
        fontStyle: FontStyle.italic,
      ),
      decoration: InputDecoration(
        labelText: labelText,
        border: OutlineInputBorder(),
      ),
    );
  }
}
