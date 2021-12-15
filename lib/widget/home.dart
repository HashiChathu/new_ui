import 'package:flutter/material.dart'; 

class Home extends StatelessWidget {
  final String email;
  final String password;
  const Home({ Key? key, 
  required this.email, 
  required this.password 
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        centerTitle: true,
        title: const Text("Login Successful"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Email $email"),
            Text("Password $password"),
          ],
        ),
      ),
    );
  }
}