import 'package:flutter/material.dart';
import 'package:mediconda/core/app/mediconda_app.dart';
import 'features/verify_otp/presentation/pages/verify_otp_screen.dart';

void main() {
  runApp(

    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: VerifyOtpScreen(),
    ),
  );
}
