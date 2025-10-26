import 'package:QuickBuy/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:QuickBuy/features/authentication/screens/onboarding/onboarding.dart';
import 'package:QuickBuy/utils/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: SAppTheme.lightTheme,
      darkTheme: SAppTheme.darkTheme,
      home: Scaffold(
        backgroundColor: SColors.primary,
        body: Center(
          child: CircularProgressIndicator(color: Colors.white,),),),
    );
  }
}
