import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'auth_page.dart'; // Pastikan file ini ada dan berisi AuthPage

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url:
        'https://ioubnwyyzebnalilsyol.supabase.co', // Ganti dengan URL asli dari Supabase dashboard
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImlvdWJud3l5emVibmFsaWxzeW9sIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTgxNTQzMDQsImV4cCI6MjA3MzczMDMwNH0.E6QKxNXHJiJOLgQVJOpV6EQgrjdAEF_5iFwFkDmS08s', // Ganti dengan anon key asli
  );
  runApp(const MyApp());
}

final supabase = Supabase.instance.client;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplikasi Klub Sepak Bola',
      theme: ThemeData(
        primarySwatch: Colors.green,
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          elevation: 0,
          backgroundColor: Colors.green,
          foregroundColor: Colors.white,
        ),
        colorScheme: const ColorScheme.light().copyWith(primary: Colors.green),
      ),
      home: const AuthPage(), // Pastikan AuthPage ada dan bisa diakses
    );
  }
}
