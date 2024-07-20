import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:productivity_app/components/sizedbox.dart';
import 'package:productivity_app/util/colors.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: const Color(0xff1a1a1a),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(35, 20, 25, 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const VerticalHeight(),
            const Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              CircleAvatar(
                radius: 50,
                foregroundImage: NetworkImage(
                  'https://img.freepik.com/free-photo/low-key-portrait-modern-business-person_158595-4814.jpg',
                ),
              ),
            ]),
            const VerticalHeight(),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Erlich Bachman',
                  style: TextStyle(
                      fontSize: 34,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'erlichbachman@piedpiper.com',
                  style: TextStyle(
                      fontSize: 14,
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.white,
                      color: Colors.white),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          minimumSize: const Size(
                            150,
                            40,
                          ),
                          backgroundColor: const Color(0xff2090ff)),
                      onPressed: () {},
                      child: const Text(
                        'Edit Profile',
                        style: TextStyle(color: Colors.white),
                      )),
                ),
              ],
            ),
            const VerticalHeight(),
            const VerticalHeight(),
            const Text(
              'Notifications',
              style: TextStyle(
                  color: Color(0xff474747),
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
            Container(
              height: 60,
              width: Get.size.width,
              decoration: BoxDecoration(
                  color: const Color(0xff333333),
                  borderRadius: BorderRadius.circular(15)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text(
                    'Turn on Notifications',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w500),
                  ),
                  Stack(children: [
                    Container(
                      height: 25,
                      width: 50,
                      decoration: BoxDecoration(
                          color: const Color(0xff7f7f7f),
                          borderRadius: BorderRadius.circular(30)),
                    ),
                    Positioned(
                      top: 2,
                      child: Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(100)),
                      ),
                    )
                  ])
                ],
              ),
            ),
            const VerticalHeight(),
            const VerticalHeight(),
            const Text(
              'Invite Link',
              style: TextStyle(
                  color: Color(0xff474747),
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
            Container(
              height: 60,
              width: Get.size.width,
              decoration: BoxDecoration(
                  color: const Color(0xff333333),
                  borderRadius: BorderRadius.circular(15)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text(
                    'Invite people',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w500),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(32, 30),
                        backgroundColor: const Color(0xff1d8ffd)),
                    child: const Text(
                      'Invite',
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Center(
              child: Text(
                'Log Out',
                style: TextStyle(color: Mycolor.tertiarycolor),
              ),
            ),
            // FloatingActionButton.small(onPressed: onPressed),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.small(
        backgroundColor: Mycolor.secondarycolor,
        onPressed: () {},
        child: Icon(
          Icons.add,
          color: Mycolor.primarycolor,
        ),
      ),
    ));
  }
}
