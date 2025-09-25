import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'screens/splash_screen.dart';
import 'screens/login_screen.dart';
import 'screens/offers_screen.dart';
import 'screens/home_screen.dart';
import 'providers/cart_provider.dart';
import 'screens/products_screen.dart';
import 'screens/cart_screen.dart';
import 'screens/profile_screen.dart';
import 'screens/admin/admin_home_screen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CartProvider()),
      ],
      child: GatoCafeApp(),
    ),
  );
}

class GatoCafeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GatoCafé',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.brown,
        fontFamily: "Gilker",
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/login': (context) => LoginScreen(),
        '/home': (context) => HomeScreen(),
        '/products': (context) => ProductsScreen(),
        '/cart': (context) => CartScreen(),
        '/offers': (context) => OfertasScreen(),
        '/profile': (context) => ProfileScreen(),
        '/admin': (context) => AdminHomeScreen(),
      },
    );
  }
}
