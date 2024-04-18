import 'package:flutter/material.dart';
import 'package:function_tree/function_tree.dart';

class CalculatorProvider extends ChangeNotifier {
  final compController = TextEditingController();

  setValue(String value) {
    String str = compController.text;

    switch (value) {
      case "C":
        compController.clear();
        break;
      case "AC":
        compController.text = str.substring(0, str.length - 1);
        break;
      case "x":
        compController.text += "*";
        break;
      case "=":
        compute();

      default:
        compController.text += value;
    }
    compController.selection = TextSelection.fromPosition(TextPosition(offset: compController.text.length));
  }

  compute() {
    String text = compController.text;
    compController.text = text.interpret().toString();
  }

  @override
  void dispose() {
    super.dispose();
    compController.dispose();
  }
}
