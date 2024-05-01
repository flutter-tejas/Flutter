import 'package:flutter/material.dart';

class Netflix extends StatelessWidget {
  const Netflix({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "NETFLIX",
            style: TextStyle(
              fontStyle: FontStyle.normal,
              fontSize: 30,
              color: Colors.red,
            ),
          ),
          backgroundColor: Colors.black,
        ),
        body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "MOVIES",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(children: [
                      Container(
                        child: Image.network(
                          fit: BoxFit.cover,
                          "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcQxk9rkmGc2FQDNu5nyz0wtUKuEc6VNUoga2usbl1ziXrW26f_R",
                          width: 200,
                          height: 300,
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        child: Image.network(
                          "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcStlNc2PthToxuJ47V1SqLLODrVE39EfOlOjwpZHrsx4LNgpWD-",
                          width: 200,
                          height: 300,
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        child: Image.network(
                          "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcQxk9rkmGc2FQDNu5nyz0wtUKuEc6VNUoga2usbl1ziXrW26f_R",
                          width: 200,
                          height: 300,
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        child: Image.network(
                          "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcQxk9rkmGc2FQDNu5nyz0wtUKuEc6VNUoga2usbl1ziXrW26f_R",
                          width: 200,
                          height: 300,
                        ),
                      ),
                    ]),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "WEB SERIES",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(children: [
                      Container(
                        child: Image.network(
                          fit: BoxFit.cover,
                          "https://assetscdn1.paytm.com/images/catalog/product/H/HO/HOMSHERLOCK-HOLHK-P63024784A1CC1B/1563111214645_0..jpg",
                          width: 150,
                          height: 200,
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        child: Image.network(
                          fit: BoxFit.cover,
                          "https://dnm.nflximg.net/api/v6/2DuQlx0fM4wd1nzqm5BFBi6ILa8/AAAAQeIeKt7LlqIJPKrT4aQijclj7K43xRSU3dQXNESNdNbnnJbT6LLWVRT9srUUbHbOo-iOH-8v3o16pUDMQ6tCgNGlkvfwvDOprROIZpQ2rgHtop9rHvbYlvzavMmUSGBCXjynJ80dn4nqZzZmzIUJMQpS.jpg?r=943",
                          width: 150,
                          height: 200,
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        child: Image.network(
                          fit: BoxFit.cover,
                          "https://www.tallengestore.com/cdn/shop/products/PeakyBlinders-NetflixTVShow-ArtPoster_125897c4-6348-41e8-b195-d203700ebcca.jpg?v=1619864555",
                          width: 150,
                          height: 200,
                        ),
                      ),
                    ]),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "MOST POPULAR",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(children: [
                      Container(
                        child: Image.network(
                          fit: BoxFit.cover,
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR0kR0gMemRl9ylPTzmmuQQVb10vo8n7kXL7BeHkeo_4lmJS56C8-WKIy_GYK12wnEmPlc",
                          width: 150,
                          height: 200,
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        child: Image.network(
                          fit: BoxFit.cover,
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZ5Cq8kozpWIaq5Aohw4rjKkh_eE7nUkDV5zcHClQaYw&s",
                          width: 150,
                          height: 200,
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        child: Image.network(
                          fit: BoxFit.cover,
                          "https://dbdzm869oupei.cloudfront.net/img/posters/preview/91008.png",
                          width: 150,
                          height: 200,
                        ),
                      ),
                    ]),
                  ),
                ])));
  }
}
