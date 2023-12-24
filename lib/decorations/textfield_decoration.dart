import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

InputDecoration inputTextDecoration({String hint = ""}){
  
  return InputDecoration(
    focusedBorder: const OutlineInputBorder(borderSide: BorderSide(color: Colors.red)),
    enabledBorder: const OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
    hintText: hint
  );
}
InputDecoration inputPasswordDecoration({String hint = "Password", required BuildContext context}){
  return InputDecoration(
    focusedBorder: const OutlineInputBorder(borderSide: BorderSide(color: Colors.red)),
    enabledBorder: const OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
    hintText: hint,
    suffixIcon: IconButton(onPressed: (){
      Fluttertoast.showToast(
        msg: "Button is Pressed",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
    );
    }, icon: Icon(Icons.remove_red_eye))
  );
}

