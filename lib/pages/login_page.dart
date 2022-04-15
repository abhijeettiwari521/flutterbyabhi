import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Color.fromRGBO(255, 255, 255, 1),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "assets/image/login.png",
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                "WELCOME $name",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 32.0),
                child: Column(
                  children: [
                    TextFormField(
                        decoration: InputDecoration(
                          hintText: "Enter Username",
                          labelText: "Username",
                        ),
                        onChanged: (Value) {
                          name = Value;
                          setState(() {});
                        }),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Enter Password",
                        labelText: "password",
                      ),
                    ),
                    SizedBox(
                      height: 50.0,
                    ),
                    InkWell(
                      onTap: () async {
                        setState(() {
                          changeButton = true;
                        });
                        await Future.delayed(Duration(seconds: 1));
                        Navigator.pushNamed(context, MyRoutes.homeRoute);
                      },
                      child: AnimatedContainer(
                        duration: Duration(seconds: 1),
                        width: changeButton ? 50 : 150,
                        height: 50,
                        alignment: Alignment.center,
                        child: changeButton
                            ? Icon(
                                Icons.done,
                                color: Colors.white,
                              )
                            : Text(
                                "Login",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                        decoration: BoxDecoration(
                            color: Colors.deepPurple,
                            borderRadius:
                                BorderRadius.circular(changeButton ? 50 : 8)),
                      ),
                    )
                    //ElevatedButton(
                    // child: Text("Login"),
                    // style: TextButton.styleFrom(minimumSize: Size(150, 40)),
                    // onPressed: () {

                    // },
                    // )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
