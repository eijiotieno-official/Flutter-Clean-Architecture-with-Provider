import 'package:clean_architecture/config/themes/dark_theme.dart';
import 'package:clean_architecture/config/themes/light_theme.dart';
import 'package:clean_architecture/features/counter/presentation/pages/counter_page.dart';
import 'package:flutter/material.dart';

// Entry point of the application
void main() {
  // Run the app by creating an instance of MainApp
  runApp(const MainApp());
}


// MainApp class representing the root widget of the application
class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Set the light theme as the default theme
      theme: lightTheme,
      // Set the dark theme for dark mode
      darkTheme: darkTheme,
      // Use system theme mode (light/dark based on system settings)
      themeMode: ThemeMode.system,
      // Set the home page to ...
      home: const CounterPage(),
    );
  }
}
