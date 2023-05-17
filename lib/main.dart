import 'package:flutter/material.dart';
import 'package:flutter_test_app/Bloc/nav_bloc.dart';
import 'package:flutter_test_app/src/nav.dart';
import 'package:provider/provider.dart';
import 'package:sliding_clipped_nav_bar/sliding_clipped_nav_bar.dart';
import 'package:badges/badges.dart' as badges;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => NavBloc(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Test App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const Nav(),
      ),
    );
  }
}
