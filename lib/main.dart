import 'package:flutter/material.dart';
import 'package:flutter_test_app/decorations/textfield_decoration.dart';
import 'package:flutter_test_app/splash_screen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      // Define the default brightness and colors.
      brightness: Brightness.light,
      primaryColor: Colors.blue,

      // Define the default font family.
      fontFamily: 'Arial',

      // Define the default TextTheme. Use this to specify the default
      // text styling for headlines, titles, bodies of text, and more.
      textTheme: const TextTheme(
        displayLarge: TextStyle(fontSize: 96.0, fontWeight: FontWeight.bold),
        titleLarge: TextStyle(fontSize: 20.0, fontStyle: FontStyle.normal),
        bodyMedium: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
      ),

      // Define the default button theme.
      buttonTheme: ButtonThemeData(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4.0),
        ),
        buttonColor: Colors.red,
      ),
    ),
    home: const SplashScreen(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  @override
  var heightController = TextEditingController();
  var weightController = TextEditingController();
  var msg = "";
  var result = "";
  var bgColor = const Color.fromARGB(255, 103, 187, 255);
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Calculator'),
      ),
      body: Container(
        color: bgColor,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: heightController,
                keyboardType: TextInputType.number,
                decoration: inputTextDecoration(hint: "Enter Height in cm").copyWith(
                  prefixIcon: Icon(Icons.height),
                ),
              ),
              SizedBox(height: 11,),
              TextField(
                controller: weightController,
                keyboardType: TextInputType.number,
                decoration: inputTextDecoration(hint: "Enter Weight in cm").copyWith(
                  prefixIcon: Icon(Icons.circle),
                ),
              ),
              SizedBox(height: 11,),
              ElevatedButton(
                onPressed: (){
                  String height = heightController.text;
                  String weight = weightController.text;
                  if(height.isEmpty || weight.isEmpty){
                    msg = "Please enter all the fields";
                  }else{
                    double heightInCm = double.parse(height);
                    double weightInKg = double.parse(weight);
                    double bmi = weightInKg/(heightInCm/100*heightInCm/100);
                    if(bmi <18.5){
                      bgColor = Colors.yellow;
                      msg = "You are Underweight!";
                    }
                    else if(bmi<25){
                      bgColor = Colors.green;
                      msg = "You are in Normal Weight Range!";
                    }
                    else{
                      bgColor = Colors.red;
                      msg = "You are OverWeight!";
                    }
                    result = "Your BMI is ${bmi.toStringAsFixed(2)}";
                  }
                  setState(() {
                    
                  });
                },
                child: Text("Calculate"),
              ),
              Text(msg),
              Text(result),
              
            ],
          )
        )
      ),
    );
  }
}
