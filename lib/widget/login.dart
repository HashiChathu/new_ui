import 'package:flutter/material.dart';

import 'custome_button.dart';
import 'custome_text_formfield.dart';
import 'home.dart';

class Login extends StatefulWidget {
  const Login({ Key? key }) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
   final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      body: SingleChildScrollView(
        child: Center(
          child: SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children:   [
               const SizedBox(
                 height: 200,
                 width: 200,
                 child: Icon(Icons.person)
                 ),

               CustomeTextFormField(
                controller: emailController,
                hintText: 'Email',
                isPassword: false,
              ),
              CustomeTextFormField(
                controller: passwordController,
                hintText: 'Password',
                isPassword: true,
              ),

              CustomeButton(
                ontap: () {
                  setState(() {
                    debugPrint(emailController.text);
                        debugPrint(passwordController.text);
                  });
                  Navigator.push(context, MaterialPageRoute(builder: (_) {
                        return Home(
                          email: emailController.text,
                          password: passwordController.text,
                        );
                  }));
                },
              ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}