import 'package:flutter/material.dart'; 
import './submit_login.dart'; 
   
class LoginPage extends StatefulWidget { 
  const LoginPage({super.key}); 
   
  @override 
  State<LoginPage> createState() => _LoginPageState(); 
} 
   
class _LoginPageState extends State<LoginPage> { 
  @override 
  Widget build(BuildContext context) { 
    return Scaffold( 
      appBar: AppBar( 
        title: Text('Login', style: TextStyle(color: Colors.blueAccent, fontWeight: FontWeight.w500)), 
        backgroundColor: Colors.transparent, 
        centerTitle: true, 
      ), 
      body: SafeArea( 
        bottom: false, 
        child: ListView( 
          padding: EdgeInsets.symmetric(horizontal: 12), 
          children: [ 
            Image.asset('assets/img/login-logo.jpg', height: 300,fit: BoxFit.fill),  
            TextField(decoration: InputDecoration(labelText: "Email", prefixIcon: Icon(Icons.email_outlined))), 
            SizedBox(height: 15), 
            TextField( 
                obscureText: true, 
                decoration: InputDecoration( 
                    labelText: "Password", 
                    prefixIcon: Icon(Icons.lock_clock_outlined) 
                ) 
            ), 
            SizedBox(height: 15), 
            SubmitLogin(), 
          ], 
        ), 
      ), 
    ); 
  } 
} 