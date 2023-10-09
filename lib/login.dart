
import 'package:flutter/material.dart';
import 'package:login_form/routes.dart';

// ignore: camel_case_types
class Login_Page extends StatefulWidget {
  const Login_Page({super.key});

  @override
  State<Login_Page> createState() => _Login_Page();
}

// ignore: camel_case_types
class _Login_Page extends State<Login_Page> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      
        appBar: AppBar(
          title: const Text("Login Form",
          style: TextStyle(fontWeight: FontWeight.bold,
          fontSize: 22,
          color: Colors.amberAccent),),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 80,horizontal: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:  [
                const Text("Login ",
                style: TextStyle(fontWeight: FontWeight.bold,
                fontSize: 29,
                color: Colors.blueGrey),),
               Padding(
                 padding: const EdgeInsets.symmetric(vertical: 30),
                 child: Form(
                    child: Column(
                      children: [
                        const SizedBox(height: 20,),
                        TextFormField(
                          autofillHints: [AutofillHints.email],
                          keyboardType: TextInputType.emailAddress,
                          decoration:  InputDecoration(
                            hintText: " username",
                            labelText: "Enter Username",
                            prefixIcon: const Icon(Icons.email),
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(20),) 
                          ),
                          onChanged: (String value){
                             
                          },
                          validator: (value) {
                           return value!.isEmpty ? 'Please Enter Email': null;
                          },
                        ), 
                        const SizedBox(height: 20,),
                        TextFormField(
                          keyboardType: TextInputType.visiblePassword,
                          decoration:  InputDecoration(
                            hintText: " Password",
                            labelText: "Enter Password",
                            prefixIcon: const Icon(Icons.password),
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(20),)                                               
                          ),
                          onChanged: (String value){},
                       validator:(value){
                        return value!.isEmpty ? 'Please Enter Password':null;
                       } ),
                       const SizedBox(
                        height: 30,
                       ),
                       ElevatedButton(
                     style: TextButton.styleFrom(minimumSize: const Size(280, 60)),
                    onPressed: (){
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                    },
                     child: const Text('login'),
                                            
                       )
                       
                      ],
                
                    ),
              
                  ),
                  
               ),
    
              ],
              
            ),
            
            
          ),
          
        
        )
        
          
        
        
        
              );
    
  }
}