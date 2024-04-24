import 'package:agreeculture/home/screen2.dart';
import 'package:flutter/material.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State createState() => _Screen1();
}

class _Screen1 extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.red,
      extendBody: true,
      body: Stack(
        children: [
          Container(
            // Here the height of the container is 45% of our total height
            height: 300,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
                // topRight: Radius.circular(50),
              ),

              color: Color(0xFFF5CEB8),
              // image: DecorationImage(
              //   alignment: Alignment.centerLeft,
              //   // image: AssetImage("assets/images/undraw_pilates_gpdb.png"),
              // ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      alignment: Alignment.center,
                      height: 32,
                      // width: 52,
                      decoration: const BoxDecoration(
                        color: Color(0xFFF2BEA1),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  const Text(
                    "Good Morning\nSagar...",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(
                    height: 120,
                  ),
                  // SearchBar(),
                  Expanded(
                    child: GridView.count(
                      clipBehavior: Clip.none,
                      crossAxisCount: 2,
                      childAspectRatio: .80,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (e) => const Screen2(),
                              ),
                            );
                          },
                          child: Container(
                            height: 50,
                            width: 50,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage('assets/images/image.png'),
                              ),
                              // color: Colors.grey,
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                              boxShadow: [
                                BoxShadow(
                                    color: Color.fromARGB(255, 131, 128, 128),
                                    blurRadius: 8,
                                    offset: Offset(8, 8),
                                    blurStyle: BlurStyle.normal),
                              ],
                            ),
                            padding: EdgeInsets.all(8),
                            child: const Text.rich(
                              textAlign: TextAlign.center,
                              TextSpan(
                                text: 'Data',
                              ),
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            height: 50,
                            width: 50,
                            decoration: const BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                              boxShadow: [
                                BoxShadow(
                                    color: Color.fromARGB(255, 131, 128, 128),
                                    blurRadius: 8,
                                    offset: Offset(8, 8),
                                    blurStyle: BlurStyle.normal),
                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            height: 50,
                            width: 50,
                            decoration: const BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                              boxShadow: [
                                BoxShadow(
                                    color: Color.fromARGB(255, 131, 128, 128),
                                    blurRadius: 8,
                                    offset: Offset(8, 8),
                                    blurStyle: BlurStyle.normal),
                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            height: 50,
                            width: 50,
                            decoration: const BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                              boxShadow: [
                                BoxShadow(
                                    color: Color.fromARGB(255, 131, 128, 128),
                                    blurRadius: 8,
                                    offset: Offset(8, 8),
                                    blurStyle: BlurStyle.normal),
                              ],
                            ),
                          ),
                        ),
                        // const Text("data")
                      ],
                    ),
                  ),
                  // Text("data")
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
