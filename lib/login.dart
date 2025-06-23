import 'package:flutter/material.dart';
import 'package:string_validator/string_validator.dart';
class LoginView extends StatelessWidget {
  LoginView({super.key});

  TextEditingController emailController = TextEditingController();
  TextEditingController pwdController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login")),
      body: Column(
        children: [
          TextField(controller: emailController),
          SizedBox(height: 20),
          TextField(controller: pwdController),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              if (emailController.text.isEmpty) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("Email cannot be empty.")),
                );
                return;
              }
              if (!emailController.text.isEmail) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("Email is not valid.")),
                );
                return;
              }
              if (pwdController.text.isEmpty) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("Password cannot be empty.")),
                );
                return;
              }
              if (pwdController.text.length < 6) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("Password is too short.")),
                );
                return;
              }
            },
            child: Text("Login"),
          ),
        ],
      ),
    );
  }
}
