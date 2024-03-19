import 'package:flutter/material.dart'; 

void showSnakBar(String message,   context) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(message),
    ),
  );


}