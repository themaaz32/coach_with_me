import 'package:coach_with_me/screens/home/home.dart';
import 'package:coach_with_me/screens/message/ChatScreen.dart';
import 'package:coach_with_me/screens/payment/PaymentScreen.dart';
import 'package:coach_with_me/screens/profile/TrainerProfile.dart';
import 'package:coach_with_me/screens/trainers/TrainersScreen.dart';
import 'package:coach_with_me/screens/useridentification/UserIdentificationScreen.dart';
import 'package:coach_with_me/screens/welcome/SplashScreen.dart';
import 'package:flutter/cupertino.dart';

var appRoutes = {
  "/" : (context) => SplashScreen(),
  "/identification" : (context) => UserIdentificationScreen(),
  "/home" : (context) => UserHomeScreen(),
  "/trainer" : (context) => TrainerProfile(),
  "/chat" : (context) => ChatScreen(),
  "/trainers" : (context) => TrainerScreen(),
  "/payment" : (context) => PaymentScreen(),
};