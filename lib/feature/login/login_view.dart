import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            spaceBox(120),
            const Text(
              "Telefon Numaranı Gir",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10),
              child: Text(
                "Telefonuna Doğrulama Kodu Göndereceğiz",
                style: TextStyle(fontSize: 13, color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

SizedBox spaceBox(double height) => SizedBox(
      height: height,
    );
