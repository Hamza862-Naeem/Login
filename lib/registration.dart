import 'package:flutter/material.dart';

class Registration extends StatelessWidget {
  const Registration({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: const Text("Enter your crendantional"),),
    body:Center(child: Column(
      children:  [const Text("Thank you"),
      Column(
        children: [
          TextField(
            keyboardType: TextInputType.name,
            autofillHints: [AutofillHints.email],
            
          )
        ],
      )],
      
    ),) ,
    ),
    );
  }
}