import 'package:flutter/material.dart';
import 'package:productivity_app/components/sizedbox.dart';
import 'package:productivity_app/util/colors.dart';

class PageThree extends StatefulWidget {
  const PageThree({super.key});

  @override
  State<PageThree> createState() => _PageThreeState();
}

class _PageThreeState extends State<PageThree> with TickerProviderStateMixin { 


  @override
  Widget build(BuildContext context) {
  TabController tabController=TabController (length: 2, vsync:this ) ;

    return SafeArea(
        child: Scaffold(
      backgroundColor: const Color(0xff1a1a1a),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const VerticalHeight(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                      color: Mycolor.secondarycolor,
                      borderRadius: BorderRadius.circular(5)),
                  child: Icon(
                    Icons.arrow_back_ios,
                    size: 10,
                    color: Mycolor.primarycolor,
                  ),
                ),
                SizedBox(
                  height: 40,
                  child: Row(
                    children: [
                      Text(
                        'Daily Progress',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Mycolor.primarycolor),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.search,
                            size: 23,
                            color: Mycolor.primarycolor,
                          )),
                      const CircleAvatar(
                        foregroundImage: NetworkImage(
                            'https://img.freepik.com/free-photo/low-key-portrait-modern-business-person_158595-4814.jpg'),
                      )
                    ],
                  ),
                ),
              ],
            ),
            const VerticalHeight(),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: SizedBox(
                height: 45,
                child: TextFormField(
                  decoration: InputDecoration(
                      label: const Text(
                        'Search',
                        style: TextStyle(color: Colors.white60),
                      ),
                      filled: true,
                      fillColor: Colors.grey[800]),
                ),
              ),
            ),
            const VerticalHeight(),
            TabBar(tabs: [Text('All'), Text("Favourites")]),
            TabBarView(children: [
              Container(
                color: Colors.amber,
              ),
              Container(
                color: Colors.blue,
              )
            ])
          ],
        ),
      ),
    ));
  }
}
