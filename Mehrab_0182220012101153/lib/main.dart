import 'package:flutter/material.dart';
import 'registration_page.dart';
import 'login_page.dart';
import 'grid_view_page.dart';
import 'list_view_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomePage(),
      routes: {
        '/register': (_) => RegistrationPage(),
        '/login': (_) => LoginPage(),
        '/grid': (_) => GridViewPage(),
        '/list': (_) => ListViewPage(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  Widget _buildButton(BuildContext context, String title, String route) {
    return ElevatedButton(
      onPressed: () => Navigator.pushNamed(context, route),
      child: Text(title),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Main Page')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildButton(context, 'Register', '/register'),
            _buildButton(context, 'Log In', '/login'),
            _buildButton(context, 'Grid View', '/grid'),
            _buildButton(context, 'List View', '/list'),
          ],
        ),
      ),
    );
  }
}
