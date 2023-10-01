import 'package:flutter/material.dart';
import 'package:flutterproject/src/constants/sizes.dart';
import 'package:flutterproject/src/constants/text_strings.dart';

class SignUpFormWidget extends StatelessWidget {
  const SignUpFormWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: sFormHeight - 10),
      child: Form(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            decoration: const InputDecoration(
                label: Text(sFullname),
                prefixIcon: Icon(Icons.person_outline_rounded)),
          ),
          const SizedBox(
            height: sFormHeight - 20,
          ),
          TextFormField(
            decoration: const InputDecoration(
                label: Text(sEmail), prefixIcon: Icon(Icons.email_outlined)),
          ),
          const SizedBox(
            height: sFormHeight - 20,
          ),
          TextFormField(
            decoration: const InputDecoration(
                label: Text(sPhoneno), prefixIcon: Icon(Icons.numbers)),
          ),
          const SizedBox(
            height: sFormHeight - 20,
          ),
          TextFormField(
            decoration: const InputDecoration(
                label: Text(sPass), prefixIcon: Icon(Icons.fingerprint)),
          ),
          const SizedBox(
            height: sFormHeight - 10,
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () {}, child: Text(sSignup.toUpperCase())),
          ),
        ],
      )),
    );
  }
}
