// // import 'package:flutter/material.dart';
// // import 'package:magic_sdk/magic_sdk.dart';
// //
// // class LoginPage extends StatefulWidget {
// //   const LoginPage({Key? key}) : super(key: key);
// //
// //   @override
// //   State<LoginPage> createState() => _LoginPageState();
// // }
// //
// // class _LoginPageState extends State<LoginPage> {
// //   Magic magic = Magic.instance;
// //
// //   final myController = TextEditingController(text: 'your.email@example.com');
// //
// //   @override
// //   void initState() {
// //     super.initState();
// //
// //     /// Checks if the user is already loggedIn
// //     var future = magic.user.isLoggedIn();
// //     future.then((isLoggedIn) {
// //       if (isLoggedIn) {
// //         /// Navigate to home page
// //         //   Navigator.push(context,
// //         //       MaterialPageRoute(builder: (context) => const HomePage()));
// //       }
// //     });
// //   }
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //         appBar: AppBar(
// //           title: const Text('Magic Demo Login'),
// //           automaticallyImplyLeading: false,
// //         ),
// //         body: Center(
// //             child:
// //             Column(mainAxisAlignment: MainAxisAlignment.center, children: [
// //               Padding(
// //                 padding: const EdgeInsets.symmetric(horizontal: 32.0),
// //                 child: TextFormField(
// //                   controller: myController,
// //                   decoration: const InputDecoration(
// //                     hintText: 'Enter your email',
// //                   ),
// //                   validator: (String? value) {
// //                     if (value == null || value.isEmpty) {
// //                       return 'Please enter your email';
// //                     }
// //                     return null;
// //                   },
// //                 ),
// //               ),
// //               TextButton(
// //                 style: ButtonStyle(
// //                   foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
// //                 ),
// //                 onPressed: () async {
// //                   var token =
// //                   await magic.auth.loginWithEmailOTP(email: myController.text);
// //                   debugPrint('token, $token');
// //
// //                   if (token.isNotEmpty) {
// //                     /// Navigate to home page
// //                     // Navigator.push(context,
// //                     //     MaterialPageRoute(builder: (context) => const HomePage()));
// //                   }
// //                 },
// //                 child: const Text('Login With Magic Email OTP'),
// //               ),
// //             ])));
// //   }
// // }
//
// //magic_sdk
// /*import 'package:flutter/material.dart';
// import 'package:magic_sdk/magic_sdk.dart';
//
// class MobileLogin extends StatefulWidget {
//   const MobileLogin({Key? key}) : super(key: key);
//
//   @override
//   State<MobileLogin> createState() => _MobileLoginState();
// }
//
// class _MobileLoginState extends State<MobileLogin> {
//   TextEditingController textEditingController = TextEditingController();
//
//   _authenticate(BuildContext context)async{
//     //final token = await Magic.instance.auth.loginWithEmailOTP(email: textEditingController.text);
//     final token = await Magic.instance.auth.loginWithMagicLink(email: textEditingController.text);
//     print("${token}**92");
//     print("${textEditingController.text}**92");
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         decoration: BoxDecoration(
//             gradient: LinearGradient(
//           begin: Alignment.topLeft,
//           end: Alignment.bottomRight,
//           colors: [
//             Colors.white,
//             Colors.purpleAccent.shade100,
//             Colors.purple.shade900
//           ],
//         )),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             Center(
//                 child: Text(
//               "LOGIN",
//               style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//             )),
//             SizedBox(height: 20),
//             Container(
//                 color: Colors.transparent,
//                 child: TextFormField(
//                   decoration: InputDecoration(
//                     hintText: 'Enter your email',
//                   ),
//                   cursorColor: Colors.white,
//                   controller: textEditingController,
//                   style: TextStyle(
//                       color: Colors.purple[900], fontWeight: FontWeight.w600),
//                 )),
//             ElevatedButton(
//               onPressed: () {
//                 _authenticate(context);
//               },
//               child: Text("LOGIN"),
//               style: ElevatedButton.styleFrom(
//                 shadowColor: Colors.transparent,
//                 backgroundColor: Colors.purple,
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }*/
//
// import 'package:flutter/material.dart';
// import 'package:supabase/supabase.dart';
//
//
// class SupaLog extends StatelessWidget {
//   TextEditingController _controller = TextEditingController();
//   final supabase = SupabaseClient('https://hlacogmhnzgcryzopthv.supabase.co', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImhsYWNvZ21obnpnY3J5em9wdGh2Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTc0NjI5MTQsImV4cCI6MjAxMzAzODkxNH0.zr9F-yQ0puND67e5buNeebk7iC6uePJiikIJ_euQ6mg');
//
//   Future<void> sendMagicLink(String email) async {
//     final response = await supabase.auth.signUp(password: "9865510003@Sab");
//     if (response.user == null) {
//      print("Link sent to mail");
//     } else {
//       print('Error sending magic link: ${response.user?.email}**177');
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Magic Link Login'),
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(16.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             TextFormField(
//              controller: _controller,
//               decoration: InputDecoration(labelText: 'Email'),
//             ),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () {
//                 sendMagicLink(_controller.toString());
//               },
//               child: Text('Send Magic Link'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
