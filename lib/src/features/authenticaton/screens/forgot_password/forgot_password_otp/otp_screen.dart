import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutterproject/src/constants/sizes.dart';
import 'package:flutterproject/src/constants/text_strings.dart';
import 'package:google_fonts/google_fonts.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(sDefaultSize),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              sOtpTitle,
              style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.bold, fontSize: 80.0),
              textAlign: TextAlign.center,
            ),
            Text(
              sOtpSubtitle.toUpperCase(),
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 40.0,
            ),
            const Text(
              "$sOtpMessage abc@gmail.com",
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20.0,
            ),
            OtpTextField(
              numberOfFields: 6,
              fillColor: Colors.black.withOpacity(0.1),
              filled: true,
              onSubmit: (code) {
                print("OTP is $code");
              },
            ),
            const SizedBox(
              height: 20.0,
            ),
            SizedBox(
                width: double.infinity,
                child:
                    ElevatedButton(onPressed: () {}, child: const Text(sNext))),
          ],
        ),
      ),
    );
  }
}
