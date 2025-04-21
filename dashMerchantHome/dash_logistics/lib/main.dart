

// import 'package:dash_logistics/blocs/log_in_bloc.dart';

// import 'package:dash_logistics/blocs/signup_bloc.dart'; // Use signup_bloc.dart consistently
// import 'package:dash_logistics/blocs/splash_bloc.dart';
// import 'package:dash_logistics/screens.dart/home_screen.dart';
// import 'package:dash_logistics/screens.dart/login_screen.dart';
// import 'package:dash_logistics/screens.dart/sign_up_screen.dart';
// import 'package:dash_logistics/screens.dart/splash_screen.dart';
// import 'package:dash_logistics/utils/colors.dart';
// import 'package:dash_logistics/utils/routes.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:dash_logistics/repositories/user_repository.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MultiRepositoryProvider(
//       providers: [
//         RepositoryProvider(create: (context) => UserRepository()),
//       ],
//       child: MultiBlocProvider(
//         providers: [
//           BlocProvider(create: (context) => SplashBloc()),
//           BlocProvider(
//             create: (context) => LoginBloc(
//               userRepository: RepositoryProvider.of<UserRepository>(context),
//             ),
//           ),
//           BlocProvider(
//             create: (context) => SignUpBloc(
//               RepositoryProvider.of<UserRepository>(context),
//             ),
//           ),
//         ],
//         child: MaterialApp(
//           debugShowCheckedModeBanner: false,
//           title: 'Delivery App',
//           theme: ThemeData(
//             primarySwatch: Colors.blue,
//             primaryColor: AppColors.primaryColor,
//           ),
//           initialRoute: '/',
//           routes: {
//             '/': (context) => SplashScreen(),
//             '/login': (context) =>
//                 LoginScreen(), // Fixed: Login route points to LoginScreen
//             '/signup': (context) =>
//                 const SignUpScreen(), // Fixed: Signup route points to SignUpScreen
//                 '/home': (context) =>
//                  HomeScreen(), // Fixed: Signup route points to SignUpScreen
//           },
//         ),
//       ),
//     );
//   }
// }





import 'package:dash_logistics/blocs/log_in_bloc.dart';
import 'package:dash_logistics/blocs/signup_bloc.dart';
import 'package:dash_logistics/blocs/splash_bloc.dart';
import 'package:dash_logistics/repositories/package_repository.dart';
import 'package:dash_logistics/screens.dart/home_screen.dart';
import 'package:dash_logistics/screens.dart/login_screen.dart';
import 'package:dash_logistics/screens.dart/sign_up_screen.dart';
import 'package:dash_logistics/screens.dart/splash_screen.dart';
import 'package:dash_logistics/utils/colors.dart';
import 'package:dash_logistics/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dash_logistics/repositories/user_repository.dart';
import 'package:dash_logistics/blocs/home_bloc.dart'; // Add this import
import 'package:dash_logistics/blocs/home_event.dart'; // Add this import

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(create: (context) => UserRepository()),
        RepositoryProvider(create: (context) => PackageRepository()), // Add PackageRepository
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => SplashBloc()),
          BlocProvider(
            create: (context) => LoginBloc(
              userRepository: RepositoryProvider.of<UserRepository>(context),
            ),
          ),
          BlocProvider(
            create: (context) => SignUpBloc(
              RepositoryProvider.of<UserRepository>(context),
            ),
          ),
         BlocProvider<HomeBloc>(
          create: (context) => HomeBloc(PackageRepository()),
        ),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Delivery App',
          theme: ThemeData(
                    fontFamily: 'Poppins', // Set Poppins as the default font family
        textTheme: TextTheme(
          bodyLarge: TextStyle(fontFamily: 'Poppins'),
          bodyMedium: TextStyle(fontFamily: 'Poppins'),
          displayLarge: TextStyle(fontFamily: 'Poppins'),
          displayMedium: TextStyle(fontFamily: 'Poppins'),
          displaySmall: TextStyle(fontFamily: 'Poppins'),
          headlineMedium: TextStyle(fontFamily: 'Poppins'),
          headlineSmall: TextStyle(fontFamily: 'Poppins'),
          titleLarge: TextStyle(fontFamily: 'Poppins'),
          titleMedium: TextStyle(fontFamily: 'Poppins'),
          titleSmall: TextStyle(fontFamily: 'Poppins'),
          labelLarge: TextStyle(fontFamily: 'Poppins'),
          labelSmall: TextStyle(fontFamily: 'Poppins'),
        ),
            primarySwatch: Colors.blue,
            primaryColor: AppColors.primaryColor,
          ),
          initialRoute: '/',
          routes: {
            '/': (context) =>  SplashScreen(),
            '/login': (context) =>  LoginScreen(),
            '/signup': (context) => const SignUpScreen(),
            '/home': (context) =>  HomeScreen(),
          },
        ),
      ),
    );
  }
}