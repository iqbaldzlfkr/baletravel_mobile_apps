import 'package:bale_travel/cubit/page_cubit.dart';
import 'package:bale_travel/ui/pages/bonus_page.dart';
import 'package:bale_travel/ui/pages/get_started_page.dart';
import 'package:bale_travel/ui/pages/home_page.dart';
import 'package:bale_travel/ui/pages/main_page.dart';
import 'package:bale_travel/ui/pages/sign_up_page.dart';
import 'package:bale_travel/ui/pages/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => PageCubit(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => const SplashPage(),
          '/get-started': (context) => const GetStartedPage(),
          '/sign-up': (context) => const SignUpPage(),
          '/bonus-page': (context) => const BonusPage(),
          '/home': (context) => const HomePage(),
          '/main': (context) => const MainPage(),
        },
      ),
    );
  }
}
