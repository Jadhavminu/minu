
import 'package:flutter/material.dart';
//import 'package:minu/HomePage.dart';
//import 'Home_Page.dart';
import 'HomePage.dart';

// void main() {
//   runApp(const LoginApp());
// }
//
// class LoginApp extends StatelessWidget {
//   const LoginApp({Key? key}) : super(key: key);
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Login App',
//       theme: ThemeData(
//         // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         // useMaterial3: true,
//         primarySwatch: Colors.blue,
//       ),
//       home: const LoginPage(),
//       // home: HomePage(),
//     );
//   }
// }
String passwordPattern = (r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\><*~])');

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

   @override
   _LoginPageState createState() => _LoginPageState();
 }
class _LoginPageState extends State<LoginPage>{
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool passToggle = true;

  @override

  void dispose(){
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
}

   void _login(){
    if (_formKey.currentState!.validate()){

      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) => HomePage(),
          ),
      );
    }
          else{
            [
            TextButton(
              onPressed: (){
                Navigator.pop(context);
              },
              child: const Text('OK'),
            )
     ];
    }
   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Longin Page'),
      ),
      body:SingleChildScrollView(
        child: Padding(
        padding: const EdgeInsets.symmetric(
        horizontal: 20, vertical: 60),
    child: Form(

    child: Column(children: [
    Image.asset(
    "assets/images/Flutter.png",
    height: 200,
    width: 200,
    ),
    const SizedBox(height: 20),
            Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                    'Login Here',
                  style: TextStyle(
                    color: Colors.lightBlue,
                    fontWeight: FontWeight.w500,
                    fontSize: 30),
                  )),
               TextFormField(
                 controller: _usernameController,
                 validator: (value){
                 if (value!.isEmpty){
                   return'please enter your valied username';
                 }
                 return null;
                 },
                 decoration: const InputDecoration(
                   hintText: 'UserName',
                   border: OutlineInputBorder(),

                 ),
               ),
                 const SizedBox(height: 20),
          TextFormField(
            obscureText: passToggle,
            decoration: InputDecoration(
            hintText: 'password',
              border: const OutlineInputBorder(),
                 suffixIcon: InkWell(
                     onTap: () {
                       setState(() {
                         passToggle = !passToggle;
                       });
                     },
                   child: Icon(
                     passToggle ? Icons.visibility: Icons.visibility_off
                   ),
          ),
              ),
                 controller: _passwordController,
            validator: (value){
              if (value!.isEmpty){
                return 'please enter valied password';
              }
              if (!RegExp(passwordPattern).hasMatch(value)){
                return 'password must contain atleast 8 character';
              }
              return null;
            },
          ),
              const SizedBox(height: 20),
              TextButton(
                onPressed: (){
                },
                child: const Text('forget password'),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                  onPressed: _login,
                child: const Text('Login'),
              ),
              const SizedBox(height: 20),
            ],

          ),
        ),
      ),
    ],
    ),

        ),

      ),
    ) ,


    );

  }





}






























// // //import 'package:form_validator/form_validator.dart';
//  //import 'package:minu/HomePage.dart';
//
//  String passwordPattern = (r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\><*~])');
// class login_page extends StatefulWidget {
//   const login_page({super.key});
//
//   @override
//   State<login_page> createState() => _login_pageState();
// }
//
// class _login_pageState extends State<Login_Page> {
//   final _formkey = GlobalKey<FormState>();
//   final usernameController = TextEditingController();
//   final passController = TextEditingController();
//   bool passToggle = true;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Login Page"),
//         centerTitle: true,
//
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.symmetric(
//             horizontal: 20, vertical: 60),
//           child: Form(
//
//             child: Column(children: [
//               Image.asset(
//                 "assets/images/Login.png",
//                 height: 200,
//                 width: 200,
//               ),
//               const SizedBox(height: 20),
//               TextFormField(
//                 decoration: const InputDecoration(
//                   hintText: 'Username',
//                   labelText: 'Enter your UserName',
//
//                   border: OutlineInputBorder(),
//                 ),
//
//                 validator: (value){
//                    if (value!.isEmpty){
//                      return "Enter UserName";
//                    }
//                   else if (usernameController.text.length<10){
//                     return "Username length should not be less than 10 character";
//                    }
//                    return null;
//                 },
//               ),
//               const SizedBox(height: 10),
//               TextFormField(
//                 obscureText: passToggle,
//                 decoration: InputDecoration(
//                   hintText: 'Password',
//                   labelText: 'Enter your Password',
//                   border: const OutlineInputBorder(),
//                   suffixIcon: InkWell(
//                     onTap: () {
//                       setState(() {
//                         passToggle = !passToggle;
//                       });
//                     },
//                     child: Icon(
//                       passToggle ? Icons.visibility: Icons.visibility_off
//                     ),
//                   ),
//                 ),
//                 validator: (value){
//                   if (value!.isEmpty){
//                     return "Enter Password";
//
//                   }
//                   else if (passController.text.length < 6){
//                   }
//                   return null;
//                 }
//               ),
//
//               const SizedBox(height: 30),
//               Padding(
//                   padding: const EdgeInsets.all(20.0),
//                 child: ElevatedButton(
//                   onPressed: (){
//
//                     if (_formkey.currentState!.validate())
//                     {
//
//
//                     }
//                   },
//                   child: const Text(
//                     'Login',
//                     style: TextStyle(
//                       color: Colors.indigo, fontSize: 22),
//                     ),
//                   ),
//                 ),
//                ElevatedButton(
//                  onPressed: (){
//
//                    var snakBar = const SnackBar(content: Text('New Password'));
//                    ScaffoldMessenger.of(context).showSnackBar(snakBar);
//
//                  },
//                  child: const Text(
//                    'Forgot Password',
//                    style: TextStyle(fontSize: 22,color: Colors.red,),
//                  ),
//                ),
//
//             ],
//           ),
//           ),
//         ),
//       ),
//
//     );
//   }
// }
//













// import 'package:flutter/material.dart';
// class LoginPage extends StatefulWidget {
//   const LoginPage({super.key});
//
//   @override
//   State<LoginPage> createState() => _LoginPageState();
// }
//
// class _LoginPageState extends State<LoginPage> {
//   @override
//   Widget build(BuildContext context) {
//     final deviceHeight = MediaQuery.of(context).size.height;
//     return Scaffold(
//       body: SafeArea(
//         child: Column(
//           children: [
//             SizedBox(
//               height: deviceHeight *0.30,
//               child: const FittedBox(
//                 child: CircleAvatar(
//                   backgroundImage: AssetImage(
//                     'assets/images/Flutter.png',
//                   ),
//                   radius: 100,
//
//                 ),
//               ),
//             ),
//             Container(
//               height: deviceHeight * 0.65,
//               width:  double.infinity,
//               margin: const EdgeInsets.symmetric(horizontal: 20),
//               child: LayoutBuilder(builder: (ctx,constraints){
//                 return Column(
//                  mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     const Text('Login Now',
//                       style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
//                     ),
//                     SizedBox(height: constraints.maxHeight * 0.01,),
//                     const Text('Please enter your details'),
//                     SizedBox(height: constraints.maxHeight * 0.08,
//                     ),
//                     Container(
//                       height: constraints.maxHeight * 0.12,
//                       decoration: BoxDecoration(
//                         color: const Color(0xffB4B4B4).withOpacity(0.4),
//                         borderRadius: BorderRadius.circular(16),
//                       ),
//                       child: const Padding(
//                         padding: EdgeInsets.only(left: 15),
//                         child: Center(
//                           child: TextField(
//                             decoration: InputDecoration(
//                               border: InputBorder.none,
//                               labelText: 'Enter your username',
//                               hintText: 'Username',
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                     SizedBox(
//                       height: constraints.maxHeight * 0.02,
//                     ),
//                     Container(
//                       height: constraints.maxHeight * 0.12,
//                       decoration: BoxDecoration(
//                         color: const Color(0xffB4B4B4).withOpacity(0.4),
//                         borderRadius: BorderRadius.circular(16),
//                       ),
//                       child: Padding(
//                         padding: const EdgeInsets.only(left: 15),
//                         child: Center(
//                           child: TextField(
//                             obscureText: true,
//                               decoration: InputDecoration(
//                                 suffixIcon: IconButton(
//                                   onPressed: (){},
//                                   icon: const Icon(Icons.visibility,
//                                     color: Colors.grey,
//                                   ),
//                                 ),
//                                 border: InputBorder.none,
//                                 labelText: 'enter your password',
//                                 hintText: 'Password'
//                               ),
//                           ),
//                         ),
//                       ),
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.end,
//                       children: [
//                         TextButton(onPressed: (){}, child: const Text(
//                           'Forgot Password?',
//                           style: TextStyle(
//                             color: Colors.red,
//                           ),
//                         ))
//                       ],
//                     ),
//                     Container(
//                       width: double.infinity,
//                       height: 200,
//                       margin: const EdgeInsets.only(
//                         top: 500,
//                       ),
//                       child: ElevatedButton(
//                         onPressed: () {},
//                         child: const Text(
//                           'Login',
//                           style: TextStyle(
//                             fontWeight: FontWeight.bold,
//                             fontSize: 20
//                           ),
//                         ),
//
//                       ),
//                     ),
//
//                   ],
//                 );
//               },),
//             )
//           ],
//         ),
//       )
//
//     );
//   }
// }
