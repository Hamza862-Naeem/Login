import 'package:flutter/material.dart';

void main() {
  runApp( const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home:Scaffold(
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
                       SizedBox(
                        height: 30,
                       ),
                       MaterialButton(
                 shape: RoundedRectangleBorder(
                  borderRadius:BorderRadius.circular(22.0) ),
                        minWidth: 300,
                       height: 50,
                        onPressed: (){},
                       child:  Text("Sigin",style: TextStyle(fontWeight: FontWeight.bold,
                       fontSize: 20),
                       ),
                        color: Colors.tealAccent,
                        textColor: Colors.blueGrey, )                                             
                      ],
                  
                    ),
                  ),
               ),
              
              ],
            ),
          ),
        )
          
        
        ));
    
  }
}