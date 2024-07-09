import 'package:flutter/material.dart';
import 'package:productivity_app/components/sizedbox.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: const Color(0xff1a1a1a),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              SizedBox(
                height: 250,
                child: Image.asset(
                  'images/img1.png',
                ),
              ),
            ]),
            const VerticalHeight(),
            const Text(
              "The only\n productivity\n app you need",
              style: TextStyle(
                  color: Color(0xfffefefe),
                  fontSize: 35,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: MaterialButton(
                      height: 45,
                      minWidth: 300,
                      color: const Color(0xff1e90ff),
                      onPressed: () {},
                      child: const Text(
                        'Sign in with Email',
                        style: TextStyle(color: Colors.white),
                      )),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(145, 45),
                        elevation: 8,
                        side: const BorderSide(color: Colors.white38),
                        backgroundColor: Colors.black,
                        textStyle:
                            const TextStyle(fontWeight: FontWeight.bold)),
                    onPressed: () {},
                    child: const Text(
                      'Google',
                      style: TextStyle(color: Colors.white),
                    )),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(145, 45),
                        elevation: 8,
                        side: const BorderSide(color: Colors.white38),
                        backgroundColor: Colors.black,
                        textStyle:
                            const TextStyle(fontWeight: FontWeight.bold)),
                    onPressed: () {},
                    child: const Text(
                      'Apple Id',
                      style: TextStyle(color: Colors.white),
                    ))
              ],
            ),
            const VerticalHeight(),
            const Text(
              'By Continuing you agree to the Terms and Conditons',
              style: TextStyle(color: Colors.white, fontSize: 12),
            )
          ],
        ),
      ),
    ));
  }
}
