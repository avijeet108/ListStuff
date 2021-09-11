import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthForm extends StatefulWidget {
  @override
  _AuthFormState createState() => _AuthFormState();
}

class _AuthFormState extends State<AuthForm> {
  //------------------------------------------------
  final _formKey = GlobalKey<FormState>();
  String? _email = "";
  String? _pass = "";
  String? _username = "";
  bool islogin = true;
  //------------------------------------------------

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: ListView(
        children: [
          Container(
            child: Form(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (!islogin)
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        key: ValueKey('username'),
                        validator: (value) {
                          if (value!.isEmpty) return 'Incorrect Username';
                          return null;
                        },
                        onSaved: (value) {
                          _username = value;
                        },
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30.0),
                              borderSide: BorderSide(),
                            ),
                            labelText: "Enter Username",
                            labelStyle: GoogleFonts.roboto()),
                      ),
                    ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      key: ValueKey('email'),
                      validator: (value) {
                        if (value!.isEmpty || !value.contains('@'))
                          return 'Incorrect Email';
                        return null;
                      },
                      onSaved: (value) {
                        _email = value;
                      },
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            borderSide: BorderSide(),
                          ),
                          labelText: "Enter Email",
                          labelStyle: GoogleFonts.roboto()),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      key: ValueKey('password'),
                      validator: (value) {
                        if (value!.isEmpty) return 'Incorrect Password';
                        return null;
                      },
                      onSaved: (value) {
                        _pass = value;
                      },
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            borderSide: BorderSide(),
                          ),
                          labelText: "Enter Password",
                          labelStyle: GoogleFonts.roboto()),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        color: Colors.blue,
                      ),
                      width: double.infinity,
                      height: 60,
                      child: TextButton(
                          onPressed: () {},
                          child: islogin
                              ? Text(
                                  'Login',
                                  style: TextStyle(
                                      fontSize: 17.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                )
                              : Text(
                                  'SignUp',
                                  style: TextStyle(
                                      fontSize: 17.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                )),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
