import 'package:flutter/material.dart';
import 'package:hotels/core/utils/app_router.dart';

void main() {
  runApp(const HotelApp());
}

class HotelApp extends StatelessWidget {
  const HotelApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp.router(
      theme: ThemeData.light(),
      routerConfig:AppRouter.router,
      debugShowCheckedModeBanner: false,
     
    );
  }
}
