import 'package:doctor_hunt/authentication/signin_page_screen.dart';
import 'package:doctor_hunt/bottom_navigationbar/bottom_navigationbar_screen.dart';
import 'package:doctor_hunt/introduction/first_introduction.dart';
import 'package:doctor_hunt/introduction/fourth_introduction.dart';
import 'package:doctor_hunt/introduction/second_introduction.dart';
import 'package:doctor_hunt/introduction/third_introduction.dart';
import 'package:doctor_hunt/screen/diagonastic_test_page_screen.dart';
import 'package:doctor_hunt/screen/drawer/drawer_item_page/help_center_page_screen.dart';
import 'package:doctor_hunt/screen/drawer/drawer_item_page/medical%20record/medical_record_page_screen2.dart';
import 'package:doctor_hunt/screen/drawer/drawer_item_page/medicine%20order/medicine_order_page_screen.dart';
import 'package:doctor_hunt/screen/drawer/drawer_item_page/payment/payment_page_screen.dart';
import 'package:doctor_hunt/screen/drawer/drawer_item_page/privacy_policy_page_screen.dart';
import 'package:doctor_hunt/screen/drawer/drawer_item_page/settings_page_screen.dart';
import 'package:doctor_hunt/screen/favourite_doctor_page_screen.dart';
import 'package:doctor_hunt/screen/home_page_screen.dart';
import 'package:doctor_hunt/screen/profile/profile_page_screen1.dart';
import 'package:doctor_hunt/screen/search_page_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
       home: FirstIntroduction(),
      //home: SecondIntroduction(),
      //home: ThirdIntroduction(),
      //home: FourthIntroduction(),
      //home: SignInPageScreen(),
      //home: HomePageScreen(),
      //home: SearchPageScreen(),
      //home: FavouriteDoctorPageScreen(),
      //home: BottomNavigationBarScreen(),
      //home: ProfilePageScreen1(),
      //home: HelpCenterPageScreen(),
      //home: SettingsPageScreen(),
     // home: PrivacyPolicyPageScreen(),
     // home: DiagonasticTestPageScreen(),
      //home: MedicalReportPageScreen2(),
      //home: MedicineOrderPageScreen(),
      //home: PaymentPageScreen(),

    );
  }
}

