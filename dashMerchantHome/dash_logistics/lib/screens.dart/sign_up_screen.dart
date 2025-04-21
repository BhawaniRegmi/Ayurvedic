// import 'package:dash_logistics/main.dart';
// import 'package:dash_logistics/utils/colors.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:dash_logistics/blocs/signup_bloc.dart'; // Import only the bloc file
// import 'package:dash_logistics/repositories/user_repository.dart';

// class SignUpScreen extends StatefulWidget {
//   const SignUpScreen({super.key});

//   @override
//   _SignUpScreenState createState() => _SignUpScreenState();
// }

// class _SignUpScreenState extends State<SignUpScreen> {
//   final _fullNameController = TextEditingController();
//   final _mobileNumberController = TextEditingController();
//   final _passwordController = TextEditingController();
//   final _confirmPasswordController = TextEditingController();
//   bool _agreedToTerms = false;
//   bool _obscurePassword = true;
//   bool _obscureConfirmPassword = true;

//   @override
//   void dispose() {
//     _fullNameController.dispose();
//     _mobileNumberController.dispose();
//     _passwordController.dispose();
//     _confirmPasswordController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//       create: (context) =>
//           SignUpBloc(RepositoryProvider.of<UserRepository>(context)),
//       child: Scaffold(
//         backgroundColor: Colors.white,
//         body: SafeArea(
//           child: SingleChildScrollView(
//             padding: const EdgeInsets.all(16.0),
//             child: BlocConsumer<SignUpBloc, SignUpState>(
//               listener: (context, state) {
//                 if (state is SignUpSuccess) {
//                   ScaffoldMessenger.of(context).showSnackBar(
//                     const SnackBar(content: Text('Sign-up successful!')),
//                   );
//                   // Navigate to another screen if needed
//                 } else if (state is SignUpFailure) {
//                   ScaffoldMessenger.of(context).showSnackBar(
//                     SnackBar(content: Text(state.error)),
//                   );
//                 }
//               },
//               builder: (context, state) {
//                 return Column(
//                   children: [
//                     Image.asset("assets/images/dashLogo.png", height: 100),
//                     //  SizedBox(height: 10),
//                     const Text(
//                       'Sign Up',
//                       style:
//                           TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//                     ),
//                     const SizedBox(height: 20),
//                     // Full Name Field
//                     TextField(
//                       controller: _fullNameController,
//                       decoration: const InputDecoration(
//                         labelText: 'FULL NAME',
//                         hintText: 'Enter your full name',
//                         border: OutlineInputBorder(),
//                         prefixIcon: Icon(Icons.person),
//                       ),
//                     ),
//                     const SizedBox(height: 16),
//                     // Mobile Number Field
//                     TextField(
//                       controller: _mobileNumberController,
//                       decoration: const InputDecoration(
//                         labelText: 'MOBILE NUMBER',
//                         hintText: 'Enter your mobile number',
//                         border: OutlineInputBorder(),
//                         prefixIcon: Icon(Icons.phone),
//                       ),
//                       keyboardType: TextInputType.phone,
//                     ),
//                     const SizedBox(height: 16),
//                     // Password Field
//                     TextField(
//                       controller: _passwordController,
//                       obscureText: _obscurePassword,
//                       decoration: InputDecoration(
//                         labelText: 'PASSWORD',
//                         hintText: 'Create a password',
//                         border: const OutlineInputBorder(),
//                         prefixIcon: const Icon(Icons.lock),
//                         suffixIcon: IconButton(
//                           icon: Icon(
//                             _obscurePassword
//                                 ? Icons.visibility_off
//                                 : Icons.visibility,
//                           ),
//                           onPressed: () {
//                             setState(() {
//                               _obscurePassword = !_obscurePassword;
//                             });
//                           },
//                         ),
//                       ),
//                     ),
//                     const SizedBox(height: 16),
//                     // Confirm Password Field
//                     TextField(
//                       controller: _confirmPasswordController,
//                       obscureText: _obscureConfirmPassword,
//                       decoration: InputDecoration(
//                         labelText: 'CONFIRM PASSWORD',
//                         hintText: 'Confirm your password',
//                         border: const OutlineInputBorder(),
//                         prefixIcon: const Icon(Icons.lock),
//                         suffixIcon: IconButton(
//                           icon: Icon(
//                             _obscureConfirmPassword
//                                 ? Icons.visibility_off
//                                 : Icons.visibility,
//                           ),
//                           onPressed: () {
//                             setState(() {
//                               _obscureConfirmPassword =
//                                   !_obscureConfirmPassword;
//                             });
//                           },
//                         ),
//                       ),
//                     ),
//                     const SizedBox(height: 16),
//                     // Terms Checkbox
//                     Row(
//                       children: [
//                         Checkbox(
//                           value: _agreedToTerms,
//                           onChanged: (value) {
//                             setState(() {
//                               _agreedToTerms = value ?? false;
//                             });
//                           },
//                         ),
//                         const Expanded(
//                           child: Text(
//                             'I agree to the TERMS OF SERVICE and PRIVACY POLICY',
//                             style: TextStyle(fontSize: 12),
//                           ),
//                         ),
//                       ],
//                     ),
//                     const SizedBox(height: 16),
//                     // Sign Up Button
//                     SizedBox(
//                       width: double.infinity,
//                       child: ElevatedButton(
//                         onPressed: state is SignUpLoading
//                             ? null
//                             : () {
//                                 context.read<SignUpBloc>().add(
//                                       SignUpSubmitted(
//                                         fullName: _fullNameController.text,
//                                         mobileNumber:
//                                             _mobileNumberController.text,
//                                         password: _passwordController.text,
//                                         confirmPassword:
//                                             _confirmPasswordController.text,
//                                         agreedToTerms: _agreedToTerms,
//                                       ),
//                                     );
//                               },
//                         style: ElevatedButton.styleFrom(
//                           backgroundColor: AppColors.primaryColor,
//                           padding: const EdgeInsets.symmetric(vertical: 16),
//                         ),
//                         child: state is SignUpLoading
//                             ? const CircularProgressIndicator(
//                                 color: Colors.white)
//                             : const Text(
//                                 'SIGN UP',
//                                 style: TextStyle(color: Colors.white),
//                               ),
//                       ),
//                     ),
//                     const SizedBox(height: 16),
//                     // Divider
//                     const Row(
//                       children: [
//                         Expanded(child: Divider()),
//                         Padding(
//                           padding: EdgeInsets.symmetric(horizontal: 8.0),
//                           child: Text('Or continue with'),
//                         ),
//                         Expanded(child: Divider()),
//                       ],
//                     ),
//                     const SizedBox(height: 16),
//                     // Social Login Buttons
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         ElevatedButton.icon(
//                           onPressed: () {
//                             // Implement Google Sign-In
//                           },
//                           icon: Image.asset(
//                             'assets/images/gog.png', // Add Google logo asset
//                             height: 24,
//                           ),
//                           label: const Text('Google'),
//                           style: ElevatedButton.styleFrom(
//                             foregroundColor: Colors.black,
//                             backgroundColor: Colors.white,
//                             side: const BorderSide(color: Colors.grey),
//                           ),
//                         ),
//                         const SizedBox(width: 16),
//                         ElevatedButton.icon(
//                           onPressed: () {
//                             // Implement Facebook Sign-In
//                           },
//                           icon: Image.asset(
//                             'assets/images/faccc.png', // Add Facebook logo asset
//                             height: 24,
//                           ),
//                           label: const Text('Facebook'),
//                           style: ElevatedButton.styleFrom(
//                             foregroundColor: Colors.black,
//                             backgroundColor: Colors.white,
//                             side: const BorderSide(color: Colors.grey),
//                           ),
//                         ),
//                       ],
//                     ),
//                     const SizedBox(height: 16),
//                     // Sign In Link
//                     TextButton(
//                       onPressed: () {
//                         // Navigate to Sign In screen
//                       },
//                       child: RichText(
//                         text: TextSpan(
//                           children: [
//                             TextSpan(
//                               text: 'ALREADY HAVE AN ACCOUNT? ',
//                               style: TextStyle(
//                                 color: AppColors.lightBlack,
//                                 fontSize: 12.0,
//                               ),
//                             ),
//                             TextSpan(
//                               text: 'SIGN IN',
//                               style: TextStyle(
//                                 color: AppColors.lightBlack,
//                                 fontSize: 16.0,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ],
//                 );
//               },
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }








import 'package:dash_logistics/main.dart';
import 'package:dash_logistics/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dash_logistics/blocs/signup_bloc.dart'; // Import only the bloc file
import 'package:dash_logistics/repositories/user_repository.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _fullNameController = TextEditingController();
  final _mobileNumberController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  bool _agreedToTerms = false;
  bool _obscurePassword = true;
  bool _obscureConfirmPassword = true;

  @override
  void dispose() {
    _fullNameController.dispose();
    _mobileNumberController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          SignUpBloc(RepositoryProvider.of<UserRepository>(context)),
      child: Scaffold(
        backgroundColor: AppColors.whiteCol,
        body: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: BlocConsumer<SignUpBloc, SignUpState>(
              listener: (context, state) {
                if (state is SignUpSuccess) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Sign-up successful!')),
                  );
                  // Navigate to another screen if needed
                } else if (state is SignUpFailure) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text(state.error)),
                  );
                }
              },
              builder: (context, state) {
                return Column(
                  children: [
                    Image.asset("assets/images/dashLogo.png", height: 100),
                    //  SizedBox(height: 10),
                    const Text(
                      'Sign Up',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 20),
                    // Full Name Field
                    TextField(
                      controller: _fullNameController,
                      decoration: const InputDecoration(
                        labelText: 'FULL NAME',
                        hintText: 'Enter your full name',
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.person),
                      ),
                    ),
                    const SizedBox(height: 16),
                    // Mobile Number Field
                    TextField(
                      controller: _mobileNumberController,
                      decoration: const InputDecoration(
                        labelText: 'MOBILE NUMBER',
                        hintText: 'Enter your mobile number',
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.phone),
                      ),
                      keyboardType: TextInputType.phone,
                    ),
                    const SizedBox(height: 16),
                    // Password Field
                    TextField(
                      controller: _passwordController,
                      obscureText: _obscurePassword,
                      decoration: InputDecoration(
                        labelText: 'PASSWORD',
                        hintText: 'Create a password',
                        border: const OutlineInputBorder(),
                        prefixIcon: const Icon(Icons.lock),
                        suffixIcon: IconButton(
                          icon: Icon(
                            _obscurePassword
                                ? Icons.visibility_off
                                : Icons.visibility,
                          ),
                          onPressed: () {
                            setState(() {
                              _obscurePassword = !_obscurePassword;
                            });
                          },
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    // Confirm Password Field
                    TextField(
                      controller: _confirmPasswordController,
                      obscureText: _obscureConfirmPassword,
                      decoration: InputDecoration(
                        labelText: 'CONFIRM PASSWORD',
                        hintText: 'Confirm your password',
                        border: const OutlineInputBorder(),
                        prefixIcon: const Icon(Icons.lock),
                        suffixIcon: IconButton(
                          icon: Icon(
                            _obscureConfirmPassword
                                ? Icons.visibility_off
                                : Icons.visibility,
                          ),
                          onPressed: () {
                            setState(() {
                              _obscureConfirmPassword =
                                  !_obscureConfirmPassword;
                            });
                          },
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    // Terms Checkbox
                    Row(
                      children: [
                        Checkbox(
                          value: _agreedToTerms,
                          onChanged: (value) {
                            setState(() {
                              _agreedToTerms = value ?? false;
                            });
                          },
                        ),
                        const Expanded(
                          child: Text(
                            'I agree to the TERMS OF SERVICE and PRIVACY POLICY',
                            style: TextStyle(fontSize: 12),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    // Sign Up Button
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: state is SignUpLoading
                            ? null
                            : () {
                                context.read<SignUpBloc>().add(
                                      SignUpSubmitted(
                                        fullName: _fullNameController.text,
                                        mobileNumber:
                                            _mobileNumberController.text,
                                        password: _passwordController.text,
                                        confirmPassword:
                                            _confirmPasswordController.text,
                                        agreedToTerms: _agreedToTerms,
                                      ),
                                    );
                              },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.primaryColor,
                          padding: const EdgeInsets.symmetric(vertical: 16),
                        ),
                        child: state is SignUpLoading
                            ? const CircularProgressIndicator(
                                color: AppColors.whiteCol)
                            : const Text(
                                'SIGN UP',
                                style: TextStyle(color: AppColors.whiteCol),
                              ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    // Divider
                    const Row(
                      children: [
                        Expanded(child: Divider()),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text('Or continue with'),
                        ),
                        Expanded(child: Divider()),
                      ],
                    ),
                    const SizedBox(height: 16),
                    // Social Login Buttons
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton.icon(
                          onPressed: () {
                            // Implement Google Sign-In
                          },
                          icon: Image.asset(
                            'assets/images/gog.png', // Add Google logo asset
                            height: 24,
                          ),
                          label: const Text('Google'),
                          style: ElevatedButton.styleFrom(
                            foregroundColor: AppColors.black,
                            backgroundColor: AppColors.whiteCol,
                            side: const BorderSide(color: AppColors.grey),
                          ),
                        ),
                        const SizedBox(width: 16),
                        ElevatedButton.icon(
                          onPressed: () {
                            // Implement Facebook Sign-In
                          },
                          icon: Image.asset(
                            'assets/images/faccc.png', // Add Facebook logo asset
                            height: 24,
                          ),
                          label: const Text('Facebook'),
                          style: ElevatedButton.styleFrom(
                            foregroundColor: AppColors.black,
                            backgroundColor: AppColors.whiteCol,
                            side: const BorderSide(color: AppColors.grey),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    // Sign In Link
                    TextButton(
                      onPressed: () {
                        // Navigate to Sign In screen
                      },
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'ALREADY HAVE AN ACCOUNT? ',
                              style: TextStyle(
                                color: AppColors.lightBlack,
                                fontSize: 12.0,
                              ),
                            ),
                            TextSpan(
                              text: 'SIGN IN',
                              style: TextStyle(
                                color: AppColors.lightBlack,
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}