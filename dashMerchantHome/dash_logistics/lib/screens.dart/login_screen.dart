// import 'package:dash_logistics/blocs/log_in_bloc.dart';
// import 'package:dash_logistics/blocs/log_in_event.dart';
// import 'package:dash_logistics/blocs/log_in_state.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// import 'package:dash_logistics/repositories/user_repository.dart';

// class LoginScreen extends StatefulWidget {
//   @override
//   State<LoginScreen> createState() => _LoginScreenState();
// }

// class _LoginScreenState extends State<LoginScreen> {
//   final TextEditingController _emailController = TextEditingController();

//   final TextEditingController _passwordController = TextEditingController();

//   bool _obscurePassword = true;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//        backgroundColor: Colors.white, 
//       body: BlocProvider(
//         create: (context) => LoginBloc(userRepository: UserRepository()),
//         child: BlocListener<LoginBloc, LoginState>(
//           listener: (context, state) {
//             if (state is LoginSuccess) {
//               ScaffoldMessenger.of(context).showSnackBar(
//                   SnackBar(content: Text("Login Successful!")));
//             } else if (state is LoginFailure) {
//               ScaffoldMessenger.of(context).showSnackBar(
//                   SnackBar(content: Text(state.error)));
//             }
//           },
//           child: Center(
//             child: SingleChildScrollView(
//               child: Padding(
//                 padding: EdgeInsets.all(16.0),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Image.asset("assets/images/dashLogo.png", height: 100),
//                     SizedBox(height: 10),
//                     Text("Sign In", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
//                     SizedBox(height: 20),
//                     TextField(
//                       controller: _emailController,
//                       decoration: InputDecoration(
//                         labelText: "Username",
//                         prefixIcon: Icon(Icons.person),
//                         border: OutlineInputBorder(),
//                       ),
//                     ),
//                     SizedBox(height: 10),
//                      TextField(
//               controller: _passwordController,
//               obscureText: _obscurePassword,
//               decoration: InputDecoration(
//                 labelText: "Password",
//                 prefixIcon: Icon(Icons.lock),
//                 suffixIcon: GestureDetector(
//                   onTap: () {
//                     setState(() {
//                       _obscurePassword = !_obscurePassword;
//                     });
//                   },
//                   child: Icon(
//                     _obscurePassword ? Icons.visibility_off : Icons.visibility,
//                   ),
//                 ),
//                 border: OutlineInputBorder(),
//               ),
//             ),
//                     SizedBox(height: 10),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Row(
//                           children: [
//                             Checkbox(value: false, onChanged: (value) {}),
//                             Text("Remember me"),
//                           ],
//                         ),
//                         Text("Forgot password?", style: TextStyle(color: Colors.blue)),
//                       ],
//                     ),
                    


//                     SizedBox(height: 10),
//                     BlocBuilder<LoginBloc, LoginState>(
//                       builder: (context, state) {
//                         return ElevatedButton(
//                           style: ElevatedButton.styleFrom(
//                             backgroundColor: Colors.red,
//                             minimumSize: Size(double.infinity, 50),
//                           ),
//                           onPressed: () {
//                             context.read<LoginBloc>().add(
//                               LoginSubmitted(
//                                 email: _emailController.text,
//                                 password: _passwordController.text,
//                               ),
//                             );
//                           },
//                           child: state is LoginLoading
//                               ? CircularProgressIndicator()
//                               : Text("Sign in", style: TextStyle(color: Colors.white)),
//                         );
//                       },
//                     ),
//                     SizedBox(height: 20),
//                     Row(
//                       children: [
//                         Expanded(child: Divider()),
//                         Padding(
//                           padding: EdgeInsets.symmetric(horizontal: 10),
//                           child: Text("Or continue with"),
//                         ),
//                         Expanded(child: Divider()),
//                       ],
//                     ),
//                     SizedBox(height: 10),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         ElevatedButton(
//                           style: ElevatedButton.styleFrom(
//                             backgroundColor: Colors.white,
//                             side: BorderSide(color: Colors.grey),
//                             minimumSize: Size(130, 50),
//                           ),
//                           onPressed: () {},
//                           child: Row(
//                             children: [
//                               Image.asset("assets/images/gog.png", height: 20),
//                               SizedBox(width: 5),
//                               Text("Google"),
//                             ],
//                           ),
//                         ),
//                         SizedBox(width: 10),
//                         ElevatedButton(
//                           style: ElevatedButton.styleFrom(
//                             backgroundColor: Colors.white,
//                             side: BorderSide(color: Colors.grey),
//                             minimumSize: Size(130, 50),
//                           ),
//                           onPressed: () {},
//                           child: Row(
//                             children: [
//                               Image.asset("assets/images/faccc.png", height: 20),
//                               SizedBox(width: 5),
//                               Text("Facebook"),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                     SizedBox(height: 20),
//                     Text("© 2024 logo. All rights reserved.", style: TextStyle(color: Colors.grey)),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }


import 'package:dash_logistics/blocs/log_in_bloc.dart';
import 'package:dash_logistics/blocs/log_in_event.dart';
import 'package:dash_logistics/blocs/log_in_state.dart';
import 'package:dash_logistics/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:dash_logistics/repositories/user_repository.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteCol,
      body: BlocProvider(
        create: (context) => LoginBloc(userRepository: UserRepository()),
        child: BlocListener<LoginBloc, LoginState>(
          listener: (context, state) {
            if (state is LoginSuccess) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text("Login Successful!")),
              );
            } else if (state is LoginFailure) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(state.error)),
              );
            }
          },
          child: Center(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/images/dashLogo.png", height: 100),
                    SizedBox(height: 10),
                    Text("Sign In", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                    SizedBox(height: 20),
                    TextField(
                      controller: _emailController,
                      decoration: InputDecoration(
                        labelText: "Username",
                        prefixIcon: Icon(Icons.person),
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 10),
                    TextField(
                      controller: _passwordController,
                      obscureText: _obscurePassword,
                      decoration: InputDecoration(
                        labelText: "Password",
                        prefixIcon: Icon(Icons.lock),
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              _obscurePassword = !_obscurePassword;
                            });
                          },
                          child: Icon(
                            _obscurePassword ? Icons.visibility_off : Icons.visibility,
                          ),
                        ),
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Checkbox(value: false, onChanged: (value) {}),
                            Text("Remember me"),
                          ],
                        ),
                        Text("Forgot password?", style: TextStyle(color: AppColors.blue)),
                      ],
                    ),
                    SizedBox(height: 10),
                    BlocBuilder<LoginBloc, LoginState>(
                      builder: (context, state) {
                        return ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.redColor,
                            minimumSize: Size(double.infinity, 50),
                          ),
                          onPressed: () {
                            context.read<LoginBloc>().add(
                              LoginSubmitted(
                                email: _emailController.text,
                                password: _passwordController.text,
                              ),
                            );
                          },
                          child: state is LoginLoading
                              ? CircularProgressIndicator()
                              : Text("Sign in", style: TextStyle(color: AppColors.whiteCol)),
                        );
                      },
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Expanded(child: Divider()),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Text("Or continue with"),
                        ),
                        Expanded(child: Divider()),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.whiteCol,
                            side: BorderSide(color: AppColors.grey),
                            minimumSize: Size(130, 50),
                          ),
                          onPressed: () {},
                          child: Row(
                            children: [
                              Image.asset("assets/images/gog.png", height: 20),
                              SizedBox(width: 5),
                              Text("Google"),
                            ],
                          ),
                        ),
                        SizedBox(width: 10),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.whiteCol,
                            side: BorderSide(color: AppColors.grey),
                            minimumSize: Size(130, 50),
                          ),
                          onPressed: () {},
                          child: Row(
                            children: [
                              Image.asset("assets/images/faccc.png", height: 20),
                              SizedBox(width: 5),
                              Text("Facebook"),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Text("© 2024 logo. All rights reserved.", style: TextStyle(color: AppColors.grey,fontFamily: 'Poppins',)),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}