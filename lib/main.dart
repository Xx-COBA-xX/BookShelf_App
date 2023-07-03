import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:my_library_app/bloc_observer.dart';
import 'package:my_library_app/constants/colos.dart';
import 'package:my_library_app/cubits/auth_cubit/login_cubit/login_cubit.dart';
import 'package:my_library_app/cubits/auth_cubit/signup_cubit/sign_up_cubit.dart';
import 'package:my_library_app/screens/home/home_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

// ...

void main() async {
  
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = SmbalBlocObserver();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) {
          return LoginCubit();
        }),
        BlocProvider(create: (context) {
          return SignUpCubit();
        })
      ],
      child: GetMaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          textTheme: const TextTheme(
            titleLarge: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: kPrimaryColor),
            titleMedium: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: kTitleTextColor,
            ),
            titleSmall: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: kTitleTextColor,
            ),
          ),
          fontFamily: "Roboto",
          colorScheme: ColorScheme.fromSeed(seedColor: kPrimaryColor),
          primaryColor: kPrimaryColor,
          appBarTheme: const AppBarTheme(
            backgroundColor: white,
            elevation: 0,
          ),
          scaffoldBackgroundColor: white,
          useMaterial3: true,
        ),
        home: const HomeScreen(),
      ),
    );
  }
}
