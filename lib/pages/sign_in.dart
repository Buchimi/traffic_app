import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SignInPage extends StatelessWidget {
  SignInPage({super.key});
  User user = User();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
            height: MediaQuery.of(context).size.width,
            width: MediaQuery.of(context).size.width,
            child: Center(
              child: Image.network(
                "https://media.discordapp.net/attachments/811722728310046724/1025863344919425034/unknown.png",
                width: MediaQuery.of(context).size.width / 2,
                height: MediaQuery.of(context).size.width / 2,
              ),
            )),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
          child: TextField(
            cursorColor: Colors.white,
            style: TextStyle(color: Colors.white70),
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              label: Text(
                "Username or email",
                style: TextStyle(color: Colors.white),
              ),
            ),
            onSubmitted: (value) => user.name = value,
          ),
        ),
        const Padding(
          padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
          child: TextField(
            decoration: InputDecoration(
                label: Text(
                  "Password",
                  style: TextStyle(color: Colors.white),
                ),
                border: OutlineInputBorder()),
            obscureText: true,
          ),
        ),
        TextButton(onPressed: () {}, child: const Text("Forgot Password?")),
        ElevatedButton(
          onPressed: () {},
          style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.red[400])),
          child: const Text(
            "Log in",
            style: TextStyle(color: Colors.white),
          ),
        )
      ],
    );
  }
}

class User {
  User();
  String? name;
  String? password;
}
