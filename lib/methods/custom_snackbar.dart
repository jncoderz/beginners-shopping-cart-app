import 'package:flutter/material.dart';

class CustomSnackbar{

  successSnackbar()=> SnackBar(
    backgroundColor: Colors.green,
    content: Text("successfully added to your bag"));


failedSnackbar()=> SnackBar(
  backgroundColor: Colors.red,
  content: Text("You have added this item before"));
}