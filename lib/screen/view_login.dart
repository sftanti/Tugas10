import 'package:flutter/material.dart';


class view_login extends StatefulWidget {
  const view_login({super.key});

  @override
  State<view_login> createState() => view_loginState();
}

class view_loginState extends State<view_login> {
  final formKey = GlobalKey<FormState>();
  final TextEditingController username = TextEditingController();
  final TextEditingController password = TextEditingController();
  String yourname = '';
  String yourpassword = '';
  bool _obsecureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Apps Login'),
      ),

      body:
      Form(
        key: formKey,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text("Your name is $yourname And your password is $yourpassword "),
            ),

                Container(
                  child: TextFormField(
                    controller: username,
                    decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      hintText: "UserName",
                      ),
                    ),
                  ),
                  
                Container(
                  child: TextFormField(
                    controller: password,
                    obscureText: _obsecureText,
                    decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      hintText: "Password",
                    ),
                  ),
                ),
                TextButton(
                onPressed: () {
                setState(() {
                  yourname = username.text;
                  yourpassword = password.text;
                });
              },
              child: const Text('Submit'),
              ),
              ],
            ),
          ),
    );
  }
}