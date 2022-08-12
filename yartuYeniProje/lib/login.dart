import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:yartuyeniproje/anaSayfa.dart';
import 'package:yartuyeniproje/createAccount.dart';
import 'package:yartuyeniproje/service/auth.dart';

class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  String? email;
  String? password;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  AuthService _authService = AuthService();
  bool value = false;

  final GlobalKey<FormState> _formKey = GlobalKey();

  Map<String, String> _authData = {
    'email': '',
    'password': '',
  };

  Future _submit() async {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Center(
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 35),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 40),
                      child: Container(
                        width: 200,
                        height: 100,
                        child: Image.asset(
                          'resimler/yartu.png',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 40),
                    child: Container(
                      width: 100,
                      child: const Text(
                        'Log In',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 24),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.all(40.0),
                    child: SizedBox(
                      width: 300,
                      child: Text(
                        'Welcome back , please log in your account',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w200),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 28),
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          'Email or Username',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                width: 350,
                child: TextFormField(
                  controller: _emailController,
                  obscureText: false,
                  decoration: InputDecoration(
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    border: OutlineInputBorder(),
                    labelText: 'Email or Username',
                  ),
                  validator: (val) {
                    return RegExp(
                                r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                            .hasMatch(val!)
                        ? null
                        : "Please enter a valid email";
                  },
                  onSaved: (val){

                    email = val;
                  },
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 32),
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Text(
                          'Password',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 165),
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Text(
                          'Forgot Password?',
                          style:
                              TextStyle(color: Colors.blue[500], fontSize: 15),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                width: 350,
                child: TextFormField(
                  controller: _passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                  ),
                 onSaved: (val){

                    password = val;
                 },
                  validator: (val){
                    if(val!.length <6){

                      return "Your password must be more than 6 character";
                    }
                  },
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Checkbox(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4)),
                      checkColor: Colors.white,
                      value: this.value,
                      onChanged: (bool? value) {
                        setState(() {
                          this.value = value!;
                        });
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      child: Text(
                        'Keep me logged in',
                        style: TextStyle(color: Colors.grey[600], fontSize: 19),
                      ),
                    ),
                  )
                ],
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(fixedSize: Size(350, 40)),
                onPressed: () async {


                  try {
                    if (!_formKey.currentState!.validate()){
                      _formKey.currentState!.save();

                    }

                    await _authService
                        .signIn(_emailController.text, _passwordController.text)
                        .then((value) {
                      return Navigator.push(context,
                          MaterialPageRoute(builder: (context) => anaSayfa()));
                    });

                  } catch(e) {


                    print(e);
                  }







                },
                child: Text('log In'),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Container(
                  width: 340,
                  child: Divider(
                    color: Colors.grey[300],
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 32),
                    child: Container(
                      child: Text("Don't have an account ?",
                          style:
                              TextStyle(fontSize: 19, color: Colors.grey[600])),
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => createAccount()));
                    },
                    child: Text(
                      'Create Account',
                      style: TextStyle(color: Colors.blue[400], fontSize: 19),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
