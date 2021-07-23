import 'package:flutter/material.dart';
import 'package:myapp/model/profile.dart';

class RegisterScreen extends StatefulWidget {
  final formKey = GlobalKey<FormState>();

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final formKey = GlobalKey<FormState>();
  Profile profile = Profile();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("สร้างบัญชีผู้ใช้"),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: formKey,
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
                        "ลงทะเบียน",
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
