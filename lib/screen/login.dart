import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("เข้าสู่ระบบ"),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("อีเมล์", style: TextStyle(fontSize: 20)),
                  TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      ),
                  SizedBox(
                    height: 15,
                  ),
                  Text("รหัสผ่าน", style: TextStyle(fontSize: 20)),
                  TextFormField(
                    obscureText: true,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      child: Text(
                        "เข้าสู่ระบบ",
                        style: TextStyle(fontSize: 20),
                      ),
                      onPressed: () {},
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}