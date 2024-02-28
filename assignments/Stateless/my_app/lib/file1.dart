import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class File extends StatefulWidget {
  const File({super.key});
  @override
  State<File> createState() => _File();
}

class _File extends State<File> {
  int activeIndex = 0;
  final urlImages = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTXq6L92NPX8eQrR07SsP_xgn68JnYcL1gd_Q&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRhmz1R5M1CRlxdQef8SqHhlBt3s5fxR-NelQ&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRjSqepRK0BNpuI0Xu8V0pDxRF4sxkkAIgFCQ&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQI-Ts58nxAYhCz0zxcqWmoWcNtWq8UqSg-0A&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQKsaEnyKvMkF7hBEzHqQfj79GbOBtVjtuHPA&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQsSMmlasmwCsDM7CuGbdYO4QTG5SAaVotbRA&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSG91UuKUzJUyX-pPyefbGIFmzFJFiJ_MFqEA&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQVNzNNAPkRUFfp7vpFllQm8ccGxJOqeElSfA&usqp=CAU",
  ];
  @override
  Widget build(BuildContext context) => Scaffold(
        bottomNavigationBar: NavigationBar(
          // onDestinationSelected: (int index) {
          //   setState(() {
          //     currentPageIndex = index;
          //   });
          // },
          // indicatorColor: Colors.black.withOpacity(.8),
          // selectedIndex: currentPageIndex,
          backgroundColor: Colors.black,
          destinations: const <Widget>[
            NavigationDestination(
              icon: Icon(
                (Icons.home),
                color: Colors.black,
              ),
              label: 'Home',
            ),
            NavigationDestination(
              icon: Icon(
                (Icons.search),
              ),
              label: 'Search',
            ),
            NavigationDestination(
              icon: Icon(
                (Icons.video_collection),
              ),
              label: 'New & Hot',
            ),
            NavigationDestination(
              icon: Badge(
                label: Text('2'),
                child: Icon(Icons.download),
              ),
              label: 'Download',
            ),
            NavigationDestination(
              icon: Icon(
                (Icons.account_circle),
              ),
              label: 'My Space',
            ),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: const [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text('Drawer Header'),
              ),
            ],
          ),
        ),
        appBar: AppBar(
          title: const Text(
            'Hotstar',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),

          actions: const [
            // Spacer(),
            // SizedBox(
            //   child: Text(
            //     "Upgrade",
            //     style: TextStyle(
            //       color: Colors.yellow,
            //       fontSize: 15,
            //       fontWeight: FontWeight.bold,
            //       decoration: TextDecoration.overline,
            //     ),
            //   ),
            // ),
            ButtonBar(
              buttonTextTheme: ButtonTextTheme.primary,
              buttonHeight: 20,
              children: [
                Text(
                  " Subscribe ",
                  style: TextStyle(
                    color: Colors.white,
                    backgroundColor: Color.fromARGB(255, 210, 184, 108),
                    // decorationStyle: TextDecorationStyle.double),
                  ),
                ),
                // SizedBox(
                //   width: 0,
                // ),
                Icon(
                  Icons.cast,
                  color: Colors.white,
                ),
                // SizedBox(
                //   width: 10,
                // ),
              ],
            )
          ],
          // centerTitle: true,
          backgroundColor: Colors.black,
        ),
        body: Container(
          color: Colors.black,
          // alignment: Alignment.center,
          child: Center(
            child: ListView(
              scrollDirection: Axis.vertical,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 10,
                ),
                CarouselSlider.builder(
                  options: CarouselOptions(
                    height: 300,
                    // viewportFraction: 1,
                    autoPlay: true,
                    reverse: true,
                    autoPlayInterval: const Duration(
                      seconds: 2,
                    ),
                    onPageChanged: (index, reason) =>
                        setState(() => activeIndex = index),
                    // pageSnapping: false,
                    // enlargeCenterPage: true,
                    // enlargeStrategy: CenterPageEnlargeStrategy.height,
                  ),
                  itemCount: urlImages.length,
                  itemBuilder: (context, index, realIndex) {
                    final urlImage = urlImages[index];

                    return buildImage(urlImage, index);
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                // buildIndicator(),
                const Row(
                  children: [
                    Text(
                      " Latest Releases",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Spacer(),
                    Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Colors.white,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        width: 8,
                      ),
                      Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRKzeV1TjmQwH6HWKBT-xI8Glis9q44gq7npQ&usqp=CAU",
                        height: 200,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQm6lPBfFLsty8JWm5vb6seCw70RUqU35fnjA&usqp=CAU",
                        height: 200,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSX8vAqbYyF7BIMEJT2UETvPu4ySS4RPHkc2g&usqp=CAU",
                        height: 200,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQm6lPBfFLsty8JWm5vb6seCw70RUqU35fnjA&usqp=CAU",
                        height: 200,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSkdAo53_Y-Fe9AmvkIEWZ4a5OV2HKlJJyDEg&usqp=CAU",
                        height: 200,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTuyd7XdCZXW9_M__u-Iq1WuRXV_jDwas9djA&usqp=CAU",
                        height: 200,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOyjFp3U8jizIw1lr3f9uZAGgTvY0mIZt7dw&usqp=CAU",
                        height: 200,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSApU0855G0BdgdKBmpkcVB4-mVSyn7CYI0Yw&usqp=CAU",
                        height: 200,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQm6lPBfFLsty8JWm5vb6seCw70RUqU35fnjA&usqp=CAU",
                        height: 200,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSkdAo53_Y-Fe9AmvkIEWZ4a5OV2HKlJJyDEg&usqp=CAU",
                        height: 200,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Row(
                  children: [
                    Text(
                      " Web Series",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Spacer(),
                    Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Colors.white,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        width: 8,
                      ),
                      Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTuyd7XdCZXW9_M__u-Iq1WuRXV_jDwas9djA&usqp=CAU",
                        height: 200,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOyjFp3U8jizIw1lr3f9uZAGgTvY0mIZt7dw&usqp=CAU",
                        height: 200,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSApU0855G0BdgdKBmpkcVB4-mVSyn7CYI0Yw&usqp=CAU",
                        height: 200,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQm6lPBfFLsty8JWm5vb6seCw70RUqU35fnjA&usqp=CAU",
                        height: 200,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSkdAo53_Y-Fe9AmvkIEWZ4a5OV2HKlJJyDEg&usqp=CAU",
                        height: 200,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRKzeV1TjmQwH6HWKBT-xI8Glis9q44gq7npQ&usqp=CAU",
                        height: 200,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQm6lPBfFLsty8JWm5vb6seCw70RUqU35fnjA&usqp=CAU",
                        height: 200,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSX8vAqbYyF7BIMEJT2UETvPu4ySS4RPHkc2g&usqp=CAU",
                        height: 200,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQm6lPBfFLsty8JWm5vb6seCw70RUqU35fnjA&usqp=CAU",
                        height: 200,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSkdAo53_Y-Fe9AmvkIEWZ4a5OV2HKlJJyDEg&usqp=CAU",
                        height: 200,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTuyd7XdCZXW9_M__u-Iq1WuRXV_jDwas9djA&usqp=CAU",
                        height: 200,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Row(
                  children: [
                    Text(
                      " Best in Sports",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Spacer(),
                    Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Colors.white,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        width: 8,
                      ),
                      Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTl_PMrTT1xJKl0NCkqrYUyz17Z4G3J07BPIA&usqp=CAU",
                        height: 200,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      // Image.asset(
                      //   "D:/flutter_assignment/assignments/Stateless/my_app/assets/image/hitman.jpg",
                      //   // height: 200,
                      //   width: 200,
                      // ),
                      const SizedBox(
                        width: 8,
                      ),
                      Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSApU0855G0BdgdKBmpkcVB4-mVSyn7CYI0Yw&usqp=CAU",
                        height: 200,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQm6lPBfFLsty8JWm5vb6seCw70RUqU35fnjA&usqp=CAU",
                        height: 200,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSkdAo53_Y-Fe9AmvkIEWZ4a5OV2HKlJJyDEg&usqp=CAU",
                        height: 200,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRKzeV1TjmQwH6HWKBT-xI8Glis9q44gq7npQ&usqp=CAU",
                        height: 200,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQm6lPBfFLsty8JWm5vb6seCw70RUqU35fnjA&usqp=CAU",
                        height: 200,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSX8vAqbYyF7BIMEJT2UETvPu4ySS4RPHkc2g&usqp=CAU",
                        height: 200,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQm6lPBfFLsty8JWm5vb6seCw70RUqU35fnjA&usqp=CAU",
                        height: 200,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSkdAo53_Y-Fe9AmvkIEWZ4a5OV2HKlJJyDEg&usqp=CAU",
                        height: 200,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTuyd7XdCZXW9_M__u-Iq1WuRXV_jDwas9djA&usqp=CAU",
                        height: 200,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Row(
                  children: [
                    Text(
                      " Coming Soon",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Spacer(),
                    Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Colors.white,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        width: 8,
                      ),
                      Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTuyd7XdCZXW9_M__u-Iq1WuRXV_jDwas9djA&usqp=CAU",
                        height: 200,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOyjFp3U8jizIw1lr3f9uZAGgTvY0mIZt7dw&usqp=CAU",
                        height: 200,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSApU0855G0BdgdKBmpkcVB4-mVSyn7CYI0Yw&usqp=CAU",
                        height: 200,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQm6lPBfFLsty8JWm5vb6seCw70RUqU35fnjA&usqp=CAU",
                        height: 200,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSkdAo53_Y-Fe9AmvkIEWZ4a5OV2HKlJJyDEg&usqp=CAU",
                        height: 200,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRKzeV1TjmQwH6HWKBT-xI8Glis9q44gq7npQ&usqp=CAU",
                        height: 200,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQm6lPBfFLsty8JWm5vb6seCw70RUqU35fnjA&usqp=CAU",
                        height: 200,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSX8vAqbYyF7BIMEJT2UETvPu4ySS4RPHkc2g&usqp=CAU",
                        height: 200,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQm6lPBfFLsty8JWm5vb6seCw70RUqU35fnjA&usqp=CAU",
                        height: 200,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSkdAo53_Y-Fe9AmvkIEWZ4a5OV2HKlJJyDEg&usqp=CAU",
                        height: 200,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTuyd7XdCZXW9_M__u-Iq1WuRXV_jDwas9djA&usqp=CAU",
                        height: 200,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Row(
                  children: [
                    Text(
                      " Popular Shows",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Spacer(),
                    Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Colors.white,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        width: 8,
                      ),
                      Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTuyd7XdCZXW9_M__u-Iq1WuRXV_jDwas9djA&usqp=CAU",
                        height: 200,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOyjFp3U8jizIw1lr3f9uZAGgTvY0mIZt7dw&usqp=CAU",
                        height: 200,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSApU0855G0BdgdKBmpkcVB4-mVSyn7CYI0Yw&usqp=CAU",
                        height: 200,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQm6lPBfFLsty8JWm5vb6seCw70RUqU35fnjA&usqp=CAU",
                        height: 200,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSkdAo53_Y-Fe9AmvkIEWZ4a5OV2HKlJJyDEg&usqp=CAU",
                        height: 200,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRKzeV1TjmQwH6HWKBT-xI8Glis9q44gq7npQ&usqp=CAU",
                        height: 200,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQm6lPBfFLsty8JWm5vb6seCw70RUqU35fnjA&usqp=CAU",
                        height: 200,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSX8vAqbYyF7BIMEJT2UETvPu4ySS4RPHkc2g&usqp=CAU",
                        height: 200,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQm6lPBfFLsty8JWm5vb6seCw70RUqU35fnjA&usqp=CAU",
                        height: 200,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSkdAo53_Y-Fe9AmvkIEWZ4a5OV2HKlJJyDEg&usqp=CAU",
                        height: 200,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTuyd7XdCZXW9_M__u-Iq1WuRXV_jDwas9djA&usqp=CAU",
                        height: 200,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Row(
                  children: [
                    Text(
                      " Hotstar Specails",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Spacer(),
                    Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Colors.white,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        width: 8,
                      ),
                      Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTuyd7XdCZXW9_M__u-Iq1WuRXV_jDwas9djA&usqp=CAU",
                        height: 200,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOyjFp3U8jizIw1lr3f9uZAGgTvY0mIZt7dw&usqp=CAU",
                        height: 200,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSApU0855G0BdgdKBmpkcVB4-mVSyn7CYI0Yw&usqp=CAU",
                        height: 200,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQm6lPBfFLsty8JWm5vb6seCw70RUqU35fnjA&usqp=CAU",
                        height: 200,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSkdAo53_Y-Fe9AmvkIEWZ4a5OV2HKlJJyDEg&usqp=CAU",
                        height: 200,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRKzeV1TjmQwH6HWKBT-xI8Glis9q44gq7npQ&usqp=CAU",
                        height: 200,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQm6lPBfFLsty8JWm5vb6seCw70RUqU35fnjA&usqp=CAU",
                        height: 200,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSX8vAqbYyF7BIMEJT2UETvPu4ySS4RPHkc2g&usqp=CAU",
                        height: 200,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQm6lPBfFLsty8JWm5vb6seCw70RUqU35fnjA&usqp=CAU",
                        height: 200,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSkdAo53_Y-Fe9AmvkIEWZ4a5OV2HKlJJyDEg&usqp=CAU",
                        height: 200,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTuyd7XdCZXW9_M__u-Iq1WuRXV_jDwas9djA&usqp=CAU",
                        height: 200,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
  Widget buildImage(String urlImage, int index) => Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 10,
        ),
        // color: Colors.grey,
        child: Image.network(
          urlImage,
          fit: BoxFit.cover,
          width: 400,
        ),
      );
  Widget buildIndicator() => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: urlImages.length,
      );
}
