import 'package:flutter/material.dart';
import 'package:flutterproject/src/constants/colors.dart';
import 'package:flutterproject/src/constants/image_string.dart';
import 'package:flutterproject/src/constants/text_strings.dart';
import 'package:flutterproject/src/features/authenticaton/screens/user_profile/update_profile.dart';
import 'package:flutterproject/src/features/authenticaton/screens/user_profile/widgets/profile_menu.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var isDark = MediaQuery.of(context).platformBrightness == Brightness.dark;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.arrow_back_ios),
          ),
          title: const Text(
            sProfile,
            style: TextStyle(fontSize: 15),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                    isDark ? Icons.wb_sunny_outlined : Icons.bedtime_outlined))
          ],
        ),
        body: SingleChildScrollView(
            child: Container(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              Stack(children: [
                SizedBox(
                  width: 120,
                  height: 120,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: const Image(
                        image: AssetImage(sForgetImage),
                      )),
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
                      Icons.edit,
                      size: 20,
                      color: Colors.black,
                    ),
                  ),
                )
              ]),
              const SizedBox(
                height: 10,
              ),
              Text(
                sProfileHeading,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              Text(
                sProfileSubHeading,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                  width: 200,
                  child: ElevatedButton(
                    onPressed: () => Get.to(() => const UpdateProfileScreen()),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: sPrimaryColor,
                        side: BorderSide.none,
                        shape: const StadiumBorder()),
                    child: const Text(sEditProfile),
                  )),
              const SizedBox(
                height: 10,
              ),
              const Divider(),
              const SizedBox(
                height: 10,
              ),
              ProfileMenuWidget(
                title: sMenu1,
                icon: Icons.settings,
                onPress: () {},
              ),
              ProfileMenuWidget(
                title: sMenu2,
                icon: Icons.wallet,
                onPress: () {},
              ),
              ProfileMenuWidget(
                title: sMenu3,
                icon: Icons.person_2,
                onPress: () {},
              ),
              const Divider(
                color: Colors.grey,
              ),
              const SizedBox(
                height: 10,
              ),
              ProfileMenuWidget(
                title: sMenu4,
                icon: Icons.info,
                onPress: () {},
              ),
              ProfileMenuWidget(
                title: sMenu5,
                icon: Icons.logout_outlined,
                textColor: Colors.red,
                endIcon: false,
                onPress: () {},
              ),
            ],
          ),
        )),
      ),
    );
  }
}
