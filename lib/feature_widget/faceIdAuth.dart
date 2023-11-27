import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:local_auth/local_auth.dart';

class FaceIdAuth extends StatefulWidget {
  const FaceIdAuth({Key? key}) : super(key: key);

  @override
  State<FaceIdAuth> createState() => _FaceIdAuthState();
}

class _FaceIdAuthState extends State<FaceIdAuth> {

  LocalAuthentication auth = LocalAuthentication();
  late bool _canCheckBiometric;
  late List<BiometricType> _availableBiometrics;
  String authenized = "Not authenized";

  Future <void> _checkBiometric() async{
    late bool canCheckBiometrics;
    try{
      canCheckBiometrics = await auth.canCheckBiometrics;
    }on PlatformException catch (e){
      print(e);
    }
    if(!mounted) return;
    setState(() {
      _canCheckBiometric = canCheckBiometrics;
    });
  }

  Future<void> _getAvailableBiometric() async {
    late List <BiometricType> availableBiometric ;
    try{
      availableBiometric = await auth.getAvailableBiometrics();
    }on PlatformException catch (e){
      print(e);
    }
    setState(() {
      _availableBiometrics = availableBiometric;
    });
  }

  Future<void> _authenticate() async{
    bool authenticated = false;
    try{
      authenticated = await auth.authenticate(
          localizedReason: "Scan your finger to authenticate",
        options: AuthenticationOptions(
          stickyAuth: true,
            useErrorDialogs: true,
          biometricOnly: true,
        )
      );
    }on PlatformException catch(e){
      print(e);
    }
    if (!mounted) return;
    setState(() {
      authenized = authenticated ? "Autherized Success" : "Failed to Autenticate";
      print(authenized);
    });
  }

  @override
  void initState() {
    _checkBiometric();
    _getAvailableBiometric();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text("LOGIN",style: TextStyle(color: Colors.white,fontSize: 30),),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 50.0),
            child: Column(
              children: [
                Image.asset("assets/Fingerprint.jpg",width: 150,),
                Text("Fingerprint Auth",style: TextStyle(color: Colors.white,fontSize: 20),),
                SizedBox(height: 10,),
                Text("Authenticate Using Your Fingerprint",style: TextStyle(color: Colors.white),),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 15.0,horizontal: 15.0),
            width: double.infinity,
            color: Colors.transparent,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.grey,shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0)
              )),
              onPressed: _authenticate,
              child: Padding(
                padding:  EdgeInsets.symmetric(vertical: 14.0,horizontal: 24.0),
                child: Text("Authentication",style: TextStyle(color: Colors.white),),
              ),
            ),
          )
        ],
      ),
    );
  }
}

// Copyright 2013 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// ignore_for_file: public_member_api_docs, avoid_print


// // ** Sample code for BIO Metrics
// import 'dart:async';
//
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:local_auth/local_auth.dart';
//
//
// class FaceAuth extends StatefulWidget {
//   const FaceAuth({Key? key}) : super(key: key);
//
//   @override
//   State<FaceAuth> createState() => _FaceAuthState();
// }
//
// class _FaceAuthState extends State<FaceAuth> {
//   final LocalAuthentication auth = LocalAuthentication();
//   _SupportState _supportState = _SupportState.unknown;
//   bool? _canCheckBiometrics;
//   List<BiometricType>? _availableBiometrics;
//   String _authorized = 'Not Authorized';
//   bool _isAuthenticating = false;
//
//   @override
//   void initState() {
//     super.initState();
//     auth.isDeviceSupported().then(
//           (bool isSupported) => setState(() => _supportState = isSupported
//           ? _SupportState.supported
//           : _SupportState.unsupported),
//     );
//   }
//
//   Future<void> _checkBiometrics() async {
//     late bool canCheckBiometrics;
//     try {
//       canCheckBiometrics = await auth.canCheckBiometrics;
//     } on PlatformException catch (e) {
//       canCheckBiometrics = false;
//       print("$e 157");
//     }
//     if (!mounted) {
//       return;
//     }
//
//     setState(() {
//       _canCheckBiometrics = canCheckBiometrics;
//     });
//   }
//
//   Future<void> _getAvailableBiometrics() async {
//     late List<BiometricType> availableBiometrics;
//     try {
//       availableBiometrics = await auth.getAvailableBiometrics();
//     } on PlatformException catch (e) {
//       availableBiometrics = <BiometricType>[];
//       print("$e 174");
//     }
//     if (!mounted) {
//       return;
//     }
//
//     setState(() {
//       _availableBiometrics = availableBiometrics;
//     });
//   }
//
//   Future<void> _authenticate() async {
//     bool authenticated = false;
//     try {
//       setState(() {
//         _isAuthenticating = true;
//         _authorized = 'Authenticating';
//       });
//       authenticated = await auth.authenticate(
//         localizedReason: 'Let OS determine authentication method',
//         options: const AuthenticationOptions(
//           stickyAuth: true,
//         ),
//       );
//       setState(() {
//         _isAuthenticating = false;
//       });
//     } on PlatformException catch (e) {
//       print("$e 202");
//       setState(() {
//         _isAuthenticating = false;
//         _authorized = 'Error - ${e.message}';
//       });
//       return;
//     }
//     if (!mounted) {
//       return;
//     }
//
//     setState(
//             () => _authorized = authenticated ? 'Authorized' : 'Not Authorized');
//   }
//
//   Future<void> _authenticateWithBiometrics() async {
//     bool authenticated = false;
//     try {
//       setState(() {
//         _isAuthenticating = true;
//         _authorized = 'Authenticating';
//       });
//       authenticated = await auth.authenticate(
//         localizedReason:
//         'Scan your fingerprint (or face or whatever) to authenticate',
//         options: const AuthenticationOptions(
//           stickyAuth: true,
//           biometricOnly: true,
//         ),
//       );
//       setState(() {
//         _isAuthenticating = false;
//         _authorized = 'Authenticating';
//       });
//     } on PlatformException catch (e) {
//       print("$e 237");
//       setState(() {
//         _isAuthenticating = false;
//         _authorized = 'Error - ${e.message}';
//       });
//       return;
//     }
//     if (!mounted) {
//       return;
//     }
//
//     final String message = authenticated ? 'Authorized' : 'Not Authorized';
//     setState(() {
//       _authorized = message;
//     });
//   }
//
//   Future<void> _cancelAuthentication() async {
//     await auth.stopAuthentication();
//     setState(() => _isAuthenticating = false);
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Plugin example app'),
//         ),
//         body: ListView(
//           padding: const EdgeInsets.only(top: 30),
//           children: <Widget>[
//             Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: <Widget>[
//                 if (_supportState == _SupportState.unknown)
//                   const CircularProgressIndicator()
//                 else if (_supportState == _SupportState.supported)
//                   const Text('This device is supported')
//                 else
//                   const Text('This device is not supported'),
//                 const Divider(height: 100),
//                 Text('Can check biometrics: $_canCheckBiometrics\n'),
//                 ElevatedButton(
//                   onPressed: _checkBiometrics,
//                   child: const Text('Check biometrics'),
//                 ),
//                 const Divider(height: 100),
//                 Text('Available biometrics: $_availableBiometrics\n'),
//                 ElevatedButton(
//                   onPressed: _getAvailableBiometrics,
//                   child: const Text('Get available biometrics'),
//                 ),
//                 const Divider(height: 100),
//                 Text('Current State: $_authorized\n'),
//                 if (_isAuthenticating)
//                   ElevatedButton(
//                     onPressed: _cancelAuthentication,
//                     // TODO(goderbauer): Make this const when this package requires Flutter 3.8 or later.
//                     // ignore: prefer_const_constructors
//                     child: Row(
//                       mainAxisSize: MainAxisSize.min,
//                       children: const <Widget>[
//                         Text('Cancel Authentication'),
//                         Icon(Icons.cancel),
//                       ],
//                     ),
//                   )
//                 else
//                   Column(
//                     children: <Widget>[
//                       ElevatedButton(
//                         onPressed: _authenticate,
//                         // TODO(goderbauer): Make this const when this package requires Flutter 3.8 or later.
//                         // ignore: prefer_const_constructors
//                         child: Row(
//                           mainAxisSize: MainAxisSize.min,
//                           children: const <Widget>[
//                             Text('Authenticate'),
//                             Icon(Icons.perm_device_information),
//                           ],
//                         ),
//                       ),
//                       ElevatedButton(
//                         onPressed: _authenticateWithBiometrics,
//                         child: Row(
//                           mainAxisSize: MainAxisSize.min,
//                           children: <Widget>[
//                             Text(_isAuthenticating
//                                 ? 'Cancel'
//                                 : 'Authenticate: biometrics only'),
//                             const Icon(Icons.fingerprint),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// enum _SupportState {
//   unknown,
//   supported,
//   unsupported,
// }


// class LocalAuth{
//   static final _auth = LocalAuthentication();
//
//   static Future<bool> _canAuthenticate() async =>
//     await _auth.canCheckBiometrics || await _auth.isDeviceSupported();
//   static  Future<bool> authenticate() async {
//     try{
//       if (!await _canAuthenticate()) return false;
//       return await _auth.authenticate(
//         authMessages: const[
//           AndroidAuthMessages(
//             cancelButton:  "No Thanks",
//             signInTitle: "Sign IN",
//           ),
//         ],
//           localizedReason: "Use Face Authentication",
//         options: AuthenticationOptions(
//           stickyAuth: true,
//           useErrorDialogs: true,
//         )
//       );
//     }catch (e){
//       debugPrint("Error $e");
//     }
//   }
//
// }




//  Class Local Auth

// class LocalAuth {
//   static final _auth = LocalAuthentication();
//
//   static Future<bool> _canAuthenticate() async =>
//       await _auth.canCheckBiometrics || await _auth.isDeviceSupported();
//
//   static Future<bool> authenticate() async {
//     try {
//       if (!await _canAuthenticate()) return false;
//       return await _auth.authenticate(
//         localizedReason: "Use Face Authentication",
//         authMessages:   [
//           AndroidAuthMessages(
//           cancelButton: "No Thanks",
//           signInTitle: "Sign IN",
//         ),],
//         options: AuthenticationOptions(
//           stickyAuth: true,
//           useErrorDialogs: true,
//         ),
//       );
//     } catch (e) {
//       debugPrint("Error $e");
//       return false; // Return false in case of an error or authentication failure
//     }
//   }
// }



