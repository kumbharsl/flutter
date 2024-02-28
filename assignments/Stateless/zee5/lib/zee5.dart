import 'package:flutter/material.dart';

class Zee5 extends StatefulWidget {
  const Zee5({super.key});
  @override
  State<Zee5> createState() => _Zee5State();
}

class _Zee5State extends State<Zee5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "ZEE5",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.black,
        actions: const [
          SizedBox(width: 15),
          Text(
            "View All",
            style: TextStyle(
              color: Colors.pink,
              fontSize: 18,
            ),
          ),
          SizedBox(width: 8),
          Icon(
            Icons.search_outlined,
            color: Colors.white,
            size: 45,
          ),
          SizedBox(
            width: 5,
          ),
        ],
      ),
      body: Container(
        color: Colors.black,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Image.network(
                      'https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC/et00311762-lmdexnggxy-portrait.jpg',
                      height: 300,

                      //width: double.infinity,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Image.network(
                      'https://dbdzm869oupei.cloudfront.net/img/posters/preview/91008.png',
                      height: 300,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Image.network(
                      'https://www.tallengestore.com/cdn/shop/products/PeakyBlinders-NetflixTVShow-ArtPoster_125897c4-6348-41e8-b195-d203700ebcca.jpg?v=1619864555',
                      height: 300,
                    ),
                    const SizedBox(width: 5),
                    Image.network(
                      'https://dnm.nflximg.net/api/v6/2DuQlx0fM4wd1nzqm5BFBi6ILa8/AAAAQeIeKt7LlqIJPKrT4aQijclj7K43xRSU3dQXNESNdNbnnJbT6LLWVRT9srUUbHbOo-iOH-8v3o16pUDMQ6tCgNGlkvfwvDOprROIZpQ2rgHtop9rHvbYlvzavMmUSGBCXjynJ80dn4nqZzZmzIUJMQpS.jpg?r=943',
                      height: 300,
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  const Text(
                    "Trending Near You",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white),
                  ),
                  const Spacer(),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                    ),
                    child: const Text(
                      "More >",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    const SizedBox(
                      height: 5,
                    ),
                    Image.network(
                      'https://image.tmdb.org/t/p/original/kdO4JtO5DnIMyLymQv8C8Ol1CzA.jpg',
                      height: 300,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQVxB3arrp-3ZL6gcXdRW2yaWwB-ii4BJ9mczv6P7jNzkwgMWzOjreWrVXnQhQNtj6r4rU&usqp=CAU',
                      height: 300,
                    ),
                    Image.network(
                      'https://dnm.nflximg.net/api/v6/2DuQlx0fM4wd1nzqm5BFBi6ILa8/AAAAQeIeKt7LlqIJPKrT4aQijclj7K43xRSU3dQXNESNdNbnnJbT6LLWVRT9srUUbHbOo-iOH-8v3o16pUDMQ6tCgNGlkvfwvDOprROIZpQ2rgHtop9rHvbYlvzavMmUSGBCXjynJ80dn4nqZzZmzIUJMQpS.jpg?r=943',
                      height: 300,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Image.network(
                      'https://www.tallengestore.com/cdn/shop/products/PeakyBlinders-NetflixTVShow-ArtPoster_125897c4-6348-41e8-b195-d203700ebcca.jpg?v=1619864555',
                      height: 300,
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  const Text(
                    "Marathi Special",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.more_horiz_outlined,
                      color: Colors.blue,
                    ),
                  )
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQoBDBdLNUW6k2WKjmF2OTLa1fRAVuwI5iqFg&usqp=CAU',
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSNL86mb51N-zuHokxUTAHKzNOaWHK24A9d-Q&usqp=CAU',
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRhuXcHsCAn5UyCLWL77-YkcQyRjoYHKB0evQ&usqp=CAU',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.download_for_offline_outlined,
          size: 30,
        ),
      ),
    );
  }
}
