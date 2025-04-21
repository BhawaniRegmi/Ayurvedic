// import 'package:dash_logistics/blocs/splash_state.dart';
// import 'package:dash_logistics/utils/colors.dart';
// import 'package:flutter/gestures.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:smooth_page_indicator/smooth_page_indicator.dart';
// import '../blocs/splash_bloc.dart';
// import '../blocs/splash_event.dart';

// class SplashScreen extends StatefulWidget {
//   @override
//   _SplashScreenState createState() => _SplashScreenState();
// }

// class _SplashScreenState extends State<SplashScreen> {
//   final PageController _pageController = PageController();
//   int _currentIndex = 0;

//   final List<String> images = [
//     'assets/images/s1.jpg',
//     'assets/images/s2.png',
//     'assets/images/s3.png',
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: AppColors.white,
//       body: BlocProvider(
//         create: (context) => SplashBloc()..add(LoadSplash()),
//         child: BlocListener<SplashBloc, SplashState>(
//           listener: (context, state) {
//             if (state is SplashSkipped) {
//               Navigator.pushReplacementNamed(context, '/home');
//             }
//           },
//           child: PageView.builder(
//             controller: _pageController,
//             itemCount: images.length,
//             onPageChanged: (index) {
//               setState(() {
//                 _currentIndex = index;
//               });
//             },
//             itemBuilder: (context, index) {
//               return Stack(
//                 fit: StackFit.expand,
//                 children: [
//                   // Background Image
//                   Image.asset(
//                     images[index],
//                     fit: BoxFit.cover,
//                   ),
//                   Container(
//                     color: Colors.black.withOpacity(0.3),
//                   ),
//                       Positioned(
//                         top: 40,
//                         right: 20,
//                         child: GestureDetector(
//                           onTap: () {
//                             context.read<SplashBloc>().add(SkipSplash());
//                           },
//                           child: Text(
//                             'Skip',
//                             style: TextStyle(
//                               color: AppColors.white,
//                               fontSize: 16,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                         ),
//                       ),
//                   // Main Content Container
//                   Positioned.fill(
//                     child: SafeArea(
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           // Spacer at top
//                           SizedBox(height: 140),
//                           // Title and Description
//                           Padding(
//                             padding: EdgeInsets.symmetric(horizontal: 20),
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Text(
//                                   'Anywhere and',
//                                   style: TextStyle(
//                                     color: AppColors.white,
//                                     fontSize: 24,
//                                     fontWeight: FontWeight.bold,
//                                   ),
//                                 ),
//                                   Text(
//                                   'anything',
//                                   style: TextStyle(
//                                     color: AppColors.white,
//                                     fontSize: 24,
//                                     fontWeight: FontWeight.bold,
//                                   ),
//                                 ),
//                                 SizedBox(height: 10),
//                                 Text(
//                                   'We will send your package or anything to your destination',
//                                   style: TextStyle(
//                                     color: AppColors.white,
//                                     fontSize: 16,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                           // Bottom Container with Buttons and Page Indicator
//                           Container(
//                             padding: EdgeInsets.all(20),
//                             child: Column(
//                               children: [
//                                 // Page Indicator
//                                 SmoothPageIndicator(
//                                   controller: _pageController,
//                                   count: images.length,
//                                   effect: ExpandingDotsEffect(
//                                     activeDotColor: AppColors.primaryColor,
//                                     dotHeight: 8,
//                                     dotWidth: 8,
//                                     dotColor: AppColors.white.withOpacity(0.5),
//                                   ),
//                                 ),
//                                 SizedBox(height: 20),
//                                 // Sign Up Button
//                                 ElevatedButton(
//                                   style: ElevatedButton.styleFrom(
//                                     backgroundColor: AppColors.redColor,
//                                     shape: RoundedRectangleBorder(
//                                       borderRadius: BorderRadius.circular(8),
//                                     ),
//                                     minimumSize: Size(double.infinity, 50),
//                                   ),
//                                   onPressed: () {
//                                     Navigator.pushNamed(context, '/signup');
//                                   },
//                                   child: Text(
//                                     'Sign Up',
//                                     style: TextStyle(color: AppColors.whiteCol),
//                                   ),
//                                 ),
//                                 SizedBox(height: 10),
//                                 // Sign In Button
//                                 OutlinedButton(
//                                   style: OutlinedButton.styleFrom(
//                                     side: BorderSide(color: AppColors.whiteCol),
//                                     shape: RoundedRectangleBorder(
//                                       borderRadius: BorderRadius.circular(8),
//                                     ),
//                                     minimumSize: Size(double.infinity, 50),
//                                   ),
//                                   onPressed: () {
//                                     Navigator.pushNamed(context, '/login');
//                                   },
//                                   child: Text(
//                                     'Sign In',
//                                     style: TextStyle(color: AppColors.whiteCol),
//                                   ),
//                                 ),
//                                 SizedBox(height: 20),
//                                 // Terms and Policy
//                                 RichText(
//                                   textAlign: TextAlign.center,
//                                   text: TextSpan(
//                                     text: 'By joining you agree to our ',
//                                     style: TextStyle(color: AppColors.grey),
//                                     children: [
//                                       TextSpan(
//                                         text: 'Terms of Service',
//                                         style: TextStyle(color: AppColors.primaryColor),
//                                         recognizer: TapGestureRecognizer()
//                                           ..onTap = () {},
//                                       ),
//                                       TextSpan(
//                                         text: ' and ',
//                                         style: TextStyle(color: AppColors.grey),
//                                       ),
//                                       TextSpan(
//                                         text: 'Privacy Policy',
//                                         style: TextStyle(color: AppColors.primaryColor),
//                                         recognizer: TapGestureRecognizer()
//                                           ..onTap = () {},
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ],
//               );
//             },
//           ),
//         ),
//       ),
//     );
//   }
// }




import 'package:dash_logistics/blocs/splash_state.dart';
import 'package:dash_logistics/utils/colors.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../blocs/splash_bloc.dart';
import '../blocs/splash_event.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final PageController _pageController = PageController();
  int _currentIndex = 0;

  final List<String> images = [
    'assets/images/s1.jpg',
    'assets/images/s2.png',
    'assets/images/s3.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: BlocProvider(
        create: (context) => SplashBloc()..add(LoadSplash()),
        child: BlocListener<SplashBloc, SplashState>(
          listener: (context, state) {
            if (state is SplashSkipped) {
              Navigator.pushReplacementNamed(context, '/home');
            }
          },
          child: PageView.builder(
            controller: _pageController,
            itemCount: images.length,
            onPageChanged: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            itemBuilder: (context, index) {
              return Stack(
                fit: StackFit.expand,
                children: [
                  // Background Image
                  Image.asset(
                    images[index],
                    fit: BoxFit.cover,
                  ),
                  Container(
                    color: AppColors.black.withOpacity(0.3),
                  ),
                  Positioned(
                    top: 50,
                    right: 25,
                    child: GestureDetector(
                      onTap: () {
                        context.read<SplashBloc>().add(SkipSplash());
                      },
                      child: Text(
                        'Skip',
                        style: TextStyle(
                          color: AppColors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  // Main Content Container
                  Positioned.fill(
                    child: SafeArea(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // Spacer at top
                          SizedBox(height: 140),
                          // Title and Description
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Anywhere and',
                                  style: TextStyle(
                                    color: AppColors.white,
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  'anything',
                                  style: TextStyle(
                                    color: AppColors.white,
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  'We will send your package or anything to your destination',
                                  style: TextStyle(
                                    color: AppColors.white,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // Bottom Container with Buttons and Page Indicator
                          Container(
                            padding: EdgeInsets.all(20),
                            child: Column(
                              children: [
                                // Page Indicator
                                SmoothPageIndicator(
                                  controller: _pageController,
                                  count: images.length,
                                  effect: ExpandingDotsEffect(
                                    activeDotColor: AppColors.primaryColor,
                                    dotHeight: 8,
                                    dotWidth: 8,
                                    dotColor: AppColors.white.withOpacity(0.5),
                                  ),
                                ),
                                SizedBox(height: 20),
                                // Sign Up Button
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: AppColors.redColor,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    minimumSize: Size(double.infinity, 50),
                                  ),
                                  onPressed: () {
                                    Navigator.pushNamed(context, '/signup');
                                  },
                                  child: Text(
                                    'Sign Up',
                                    style: TextStyle(color: AppColors.whiteCol),
                                  ),
                                ),
                                SizedBox(height: 10),
                                // Sign In Button
                                OutlinedButton(
                                  style: OutlinedButton.styleFrom(
                                    side: BorderSide(color: AppColors.whiteCol),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    minimumSize: Size(double.infinity, 50),
                                  ),
                                  onPressed: () {
                                    Navigator.pushNamed(context, '/login');
                                  },
                                  child: Text(
                                    'Sign In',
                                    style: TextStyle(color: AppColors.whiteCol),
                                  ),
                                ),
                                SizedBox(height: 20),
                                // Terms and Policy
                                RichText(
                                  textAlign: TextAlign.center,
                                  text: TextSpan(
                                    text: 'By joining you agree to our ',
                                    style: TextStyle(color: AppColors.grey),
                                    children: [
                                      TextSpan(
                                        text: 'Terms of Service',
                                        style: TextStyle(color: AppColors.primaryColor),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {},
                                      ),
                                      TextSpan(
                                        text: ' and ',
                                        style: TextStyle(color: AppColors.grey),
                                      ),
                                      TextSpan(
                                        text: 'Privacy Policy',
                                        style: TextStyle(color: AppColors.primaryColor),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {},
                                      ),
                                    ],
                                  ),
                                ),
                              ],
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
    );
  }
}