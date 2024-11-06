// import 'package:flutter/material.dart';

// class LoginScreen extends StatefulWidget {
//   const LoginScreen({super.key});

//   @override
//   State<LoginScreen> createState() => _LoginScreenState();
// }

// class _LoginScreenState extends State<LoginScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: IgnorePointer(
//         ignoring: _loading,
//         child: GestureDetector(
//           onTap: () {
//             FocusScope.of(context).requestFocus(FocusNode());
//           },
//           child: Container(
//             padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
//             child: ListView(
//               children: [
//                 Container(
//                   alignment: Alignment.center,
//                   width: double.infinity,
//                   //color: Colors.red,
//                   margin: const EdgeInsets.fromLTRB(100, 42, 100, 0),
//                   child: Image.asset(
//                     "assets/images/findadmissionLogo.png",
//                     height: 51.56,
//                     width: 170,
//                   ),
//                 ),
//                 SizedBox(
//                   height: MediaQuery.of(context).size.height * .02,
//                 ),
//                 (_wrong && !_loading)
//                     ? Container(
//                         alignment: Alignment.center,
//                         child: Text(
//                           'Email  or Password is invalid',
//                           style: TextStyle(color: MyColors.heart, fontSize: 18),
//                         ),
//                       )
//                     : const Center(),
//                 Form(
//                   key: _formKey,
//                   child: Container(
//                     margin:
//                         const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
//                     child: Column(
//                       children: <Widget>[
//                         RichTextField(
//                           controller: _emailController,
//                           borderHeight: 1.0,
//                           label: "Email",
//                           keyboardType: TextInputType.emailAddress,
//                           fillColor: Colors.transparent,
//                           hintStyle: TextStyle(color: MyColors.lightWhite6),
//                           validator: (value) {
//                             if (!EmailValidator.validate(value?.trim())) {
//                               return 'We do not recognise that email address';
//                             }

//                             return null;
//                           },
//                         ),
//                         const SizedBox(
//                           height: 32,
//                         ),
//                         RichTextField(
//                           controller: _passwordController,
//                           hintText: ' ',
//                           label: "Password",
//                           borderHeight: 1.0,
//                           fillColor: Colors.transparent,
//                           hintStyle: TextStyle(color: MyColors.lightWhite6),
//                           obscureText: true,
//                           validator: (value) {
//                             if (value.length < 4) {
//                               return 'password must be 4 caracters at least ';
//                             }

//                             return null;
//                           },
//                         ),
//                         const SizedBox(
//                           height: 7,
//                         ),
//                         Container(
//                           alignment: Alignment.topLeft,
//                           child: InkWell(
//                             focusColor: Colors.transparent,
//                             highlightColor: Colors.transparent,
//                             splashColor: Colors.transparent,
//                             onTap: () {
//                               Navigator.push(
//                                   context,
//                                   MaterialPageRoute(
//                                       builder: (context) =>
//                                           RessetPasswordScreen()));
//                             },
//                             child: Text(
//                               'Forgot password?',
//                               style: TextStyle(
//                                   color: const Color.fromRGBO(45, 121, 173, 1),
//                                   fontWeight: MyFontWeight.mediume,
//                                   fontSize: MyFontSize.small14),
//                             ),
//                           ),
//                         ),
//                         const SizedBox(
//                           height: 24,
//                         ),
//                         CustomButton(
//                             textToShow: 'Login',
//                             isWhite: false,
//                             loading: _loading,
//                             action: () => _login(mainStore)),

//                         const SizedBox(
//                           height: 40,
//                         ),
//                         Container(
//                           child: const Divider(
//                             color: Color.fromRGBO(172, 172, 172, 1),
//                             height: 1,
//                           ),
//                         ),
//                         const SizedBox(
//                           height: 40,
//                         ),
//                         //
//                         Container(
//                           alignment: Alignment.topLeft,
//                           child: InkWell(
//                             child: Text(
//                               "Haven't have an account yet?",
//                               style: TextStyle(
//                                   color: const Color.fromRGBO(25, 25, 25, 1),
//                                   fontWeight: FontWeight.w400,
//                                   fontSize: MyFontSize.mediume),
//                             ),
//                           ),
//                         ),
//                         const SizedBox(
//                           height: 18,
//                         ),
//                         CustomButton(
//                           textToShow: 'Sign up',
//                           backgroundColor: Colors.white,
//                           action: () {
//                             FocusScope.of(context).requestFocus(FocusNode());
//                             Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                     builder: (context) =>
//                                         ChooseProfileTypeScreen()));
//                           },
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
