import 'dart:developer'; // For logging purposes

import 'package:flutter/material.dart';
import 'package:insta_new/ui/Reels_page.dart';

import 'Navigation_page.dart';
import 'Signup_page.dart';

import 'signup_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 50),
          child: Column(
            children: [
              const SizedBox(height: 200),
              const Center(
                child: Text(
                  'Instagram',
                  style: TextStyle(
                    fontFamily: 'Cookie',
                    fontWeight: FontWeight.w700,
                    fontSize: 50,
                  ),
                ),
              ),
              const SizedBox(height: 30),
              // Email input
              TextField(
                decoration: InputDecoration(
                  hintText: 'Phone number, email, or username',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  filled: true,
                  fillColor: Colors.grey[200],
                ),
              ),
              const SizedBox(height: 20),
              // Password input
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  filled: true,
                  fillColor: Colors.grey[200],
                ),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => InstagramNavigationBar()),
                  );
                },
                child: Container(
                  width: double.infinity,
                  height: 55,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: Colors.blue),
                  child: const Center(child: Text('Log In')),
                ),
              ),
              const SizedBox(height: 20),
              // Forgot password text
              TextButton(
                onPressed: () {
                  // Implement forgot password logic
                },
                child: const Text(
                  'Forgot your login details? Get help logging in.',
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 14,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              // OR divider
              const Row(
                children: [
                  Expanded(child: Divider(thickness: 1)),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text('OR'),
                  ),
                  Expanded(child: Divider(thickness: 1)),
                ],
              ),
              const SizedBox(height: 20),
              // Facebook login button
              TextButton.icon(
                onPressed: () {
                  // Implement Facebook login logic
                },
                icon: const Icon(Icons.facebook, color: Colors.blue),
                label: const Text(
                  'Log in with Facebook',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 300),
              // Navigation to Sign up page if no account
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an account? "),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ReelsPage()),
                      );
                    },
                    child: const Text(
                      'Sign up.',
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
