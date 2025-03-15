// import 'dart:async';

// import 'package:flutter/material.dart';
// import 'package:insta_api/UI/Login_page.dart';

// class SplashScreen extends StatefulWidget {
//   const SplashScreen({super.key});

//   @override
//   _SplashScreenState createState() => _SplashScreenState();
// }

// class _SplashScreenState extends State<SplashScreen> {
//   @override
//   void initState() {
//     super.initState();
//     Timer(
//         const Duration(seconds: 2),
//         () => Navigator.of(context).pushReplacement(MaterialPageRoute(
//             builder: (BuildContext context) => const LoginPage())));
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Center(
//         child: SizedBox(
//           height: 200,
//           width: 300,
//           child: Image.asset('assets/2227.jpg'),
//         ),
//       ),
//     );
//   }
// }
