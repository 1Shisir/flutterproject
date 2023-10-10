import 'package:flutter/material.dart';
import 'package:flutterproject/src/constants/colors.dart';
import 'package:flutterproject/src/constants/text_strings.dart';
import 'package:get/get.dart';

class UpdateProfileScreen extends StatelessWidget {
  const UpdateProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () => Get.back(),
            icon: const Icon(Icons.arrow_back_ios),
          ),
          title: const Text(
            sEditProfile,
            style: TextStyle(fontSize: 15),
          ),
        ),
        body: SingleChildScrollView(
            child: Container(
          padding: const EdgeInsets.all(30.0),
          child: Column(children: [
            Stack(children: [
              SizedBox(
                width: 120,
                height: 120,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.network(
                      "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: Container(
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.blue.withOpacity(0.4)),
                  child: const Icon(
                    Icons.camera,
                    size: 20,
                    color: Colors.black,
                  ),
                ),
              ),
            ]),
            const SizedBox(
              height: 50,
            ),
            Form(
                child: Column(
              children: [
                TextFormField(
                    decoration: const InputDecoration(
                  label: Text("Full Name"),
                  prefixIcon: Icon(Icons.person_outline_rounded),
                  border: OutlineInputBorder(),
                )),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                    decoration: const InputDecoration(
                  label: Text("E-mail"),
                  prefixIcon: Icon(Icons.email),
                  border: OutlineInputBorder(),
                )),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                    decoration: const InputDecoration(
                  label: Text("Phone No."),
                  prefixIcon: Icon(Icons.phone),
                  border: OutlineInputBorder(),
                )),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                    decoration: const InputDecoration(
                  label: Text("Password"),
                  prefixIcon: Icon(Icons.fingerprint),
                  border: OutlineInputBorder(),
                )),
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () => Get.to(() => const UpdateProfileScreen()),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: sPrimaryColor,
                      side: BorderSide.none,
                      shape: const StadiumBorder(),
                    ),
                    child: const Text(
                      sEditProfile,
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text.rich(TextSpan(
                      text: sJoined,
                      style: TextStyle(fontSize: 12),
                      children: [
                        TextSpan(
                            text: sJoinedAt,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 12))
                      ],
                    )),
                    ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.redAccent.withOpacity(0.1),
                          elevation: 0,
                          foregroundColor: Colors.red,
                          shape: const StadiumBorder(),
                          side: BorderSide.none,
                        ),
                        child: const Text(sDelete))
                  ],
                )
              ],
            ))
          ]),
        )));
  }
}
