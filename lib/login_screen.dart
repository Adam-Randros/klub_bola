import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Halaman Login'),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Login'),
          onPressed: () {
            // Contoh navigasi ke HomeScreen setelah login
            Navigator.pushReplacementNamed(context, '/home');
          },
        ),
      ),
    );
  }
}
