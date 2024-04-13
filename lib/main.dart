
//Alert Custom Page

// import 'package:flutter/material.dart';
// import 'custom_alert_dialog.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Custom Alert Dialog Demo',
//       home: HomePage(),
//     );
//   }
// }
//
// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: MaterialButton(
//           color: Theme.of(context).primaryColor,
//           onPressed: () {
//             showDialog(
//               barrierColor: Colors.black26,
//               context: context,
//               builder: (context) {
//                 return CustomAlertDialog(
//                   title: "Dialog Title",
//                   description: "dialog Description.",
//                 );
//               },
//             );
//           },
//           child: Text("Click Here"),
//         ),
//       ),
//     );
//   }
// }














//Language



// import 'package:flutter/material.dart';
// //import 'package:flutter_change_language/LacaleString.dart';
// import 'package:minu/LocaleString.dart';
// import 'HomePage.dart';
// import 'package:get/get.dart';
// void main() {
//   runApp(MyApp());
// }
// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(
//       debugShowCheckedModeBanner: false,
//       translations: LocaleString(),
//       locale: Locale('en','US'),
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: HomePage(),
//     );
//   }
// }



//   FOR LOG IN PAGE




// import 'package:flutter/material.dart';
// import 'package:minu/HomePage.dart';
// //import 'Login_Page.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         // useMaterial3: true,
//       ),
//      home: const HomePage(),
//      // home: HomePage(),
//     );
//   }
// }








//CRUD Operation


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:minu/Login_Page.dart';
//import 'RegistrationPage.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: LoginPage(),
      //home: RegistraionPage(),
    );
  }
}








