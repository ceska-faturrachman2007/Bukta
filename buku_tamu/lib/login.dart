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

  bool _validateFields() {
    return _emailadminController.text.isNotEmpty && _passwordController.text.isNotEmpty;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal[800], // Warna AppBar
        title: Center(
          child: Text(
            "Hello admin",
            style: TextStyle(color: Colors.white), // Warna teks AppBar
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 16),
              Text(
                "Email-Admin",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.teal[800], // Warna teks label
                ),
              ),
              SizedBox(height: 16),
              TextField(
                controller: _emailadminController,
                decoration: InputDecoration(
                  labelText: "Email",
                  border: OutlineInputBorder(),
                  fillColor: Colors.grey[200], // Warna latar belakang input field
                  filled: true,
                ),
              ),
              SizedBox(height: 16),
              Text(
                "Password",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.teal[800], // Warna teks label
                ),
              ),
              SizedBox(height: 16),
              TextField(
                controller: _passwordController,
                decoration: InputDecoration(
                  labelText: "Password",
                  border: OutlineInputBorder(),
                  fillColor: Colors.grey[200], // Warna latar belakang input field
                  filled: true,
                ),
                obscureText: true,
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  if (_validateFields()) {
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
                  } else {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text("Error"),
                          content: Text("Lengkapi formnya dulu min"),
                          actions: <Widget>[
                            TextButton(
                              child: Text("OK"),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                          ],
                        );
                      },
                    );
                  }
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.teal[800], // Warna tombol
                ),
                child: Text("Login"),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.red[800], // Warna tombol
                ),
                child: Text("Kembali"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
