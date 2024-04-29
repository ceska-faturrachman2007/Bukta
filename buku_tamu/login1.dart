import 'package:buku_tamu/dashboardlogin.dart';
import 'package:flutter/material.dart';

class PageLogIn extends StatefulWidget {
  const PageLogIn({Key? key}) : super(key: key);

  @override
  State<PageLogIn> createState() => _PageLogInState();
}

class _PageLogInState extends State<PageLogIn> {
  final TextEditingController _emailadminController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Hello admin"),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _emailadminController,
              decoration: InputDecoration(
                labelText: 'Email-Admin',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
              obscureText: true,
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                if (_emailadminController.text == "ceska@gmail.com" && _passwordController.text == "54321") {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DashLogin()),
                  );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("Email atau password salah")),
                  );
                }
              },
              child: Text("Login"),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Kembali"),
            ),
          ],
        ),
      ),
    );
  }
}