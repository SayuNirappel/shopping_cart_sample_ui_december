import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_cart_may/controllers/home_screen_controller.dart';
import 'package:shopping_cart_may/view/get_started_screen/get_started_screen.dart';
import 'package:shopping_cart_may/view/home_screen/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => HomeScreenController()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: GetStartedScreen(),
      ),
    );
  }
}
