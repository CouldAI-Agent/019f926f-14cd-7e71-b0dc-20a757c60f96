import 'package:flutter/material.dart';

void main() {
  runApp(const MuApp());
}

class MuApp extends StatelessWidget {
  const MuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mu',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        scaffoldBackgroundColor: const Color(0xFFFAFAFA),
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.black,
          brightness: Brightness.light,
        ),
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF121212),
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.white,
          brightness: Brightness.dark,
        ),
      ),
      themeMode: ThemeMode.system,
      initialRoute: '/',
      routes: {
        '/': (context) => const MuScreen(),
      },
    );
  }
}

class MuScreen extends StatelessWidget {
  const MuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    
    return Scaffold(
      body: Center(
        child: Text(
          '無',
          style: TextStyle(
            fontSize: 120,
            fontWeight: FontWeight.w200,
            color: isDark ? Colors.white70 : Colors.black87,
            letterSpacing: 2.0,
          ),
        ),
      ),
    );
  }
}
