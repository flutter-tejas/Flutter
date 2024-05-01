import "package:flutter/material.dart";

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CricketPlayer(),
    );
  }
}

class CricketPlayer extends StatefulWidget {
  const CricketPlayer({Key? key});

  @override
  _CricketPlayer createState() => _CricketPlayer();
}

class _CricketPlayer extends State<CricketPlayer> {
  List imageList = [
    [
      "https://upload.wikimedia.org/wikipedia/commons/b/b7/Surya_Kumar_Yadav_in_BGT_2023.jpg",
      "https://upload.wikimedia.org/wikipedia/commons/thumb/4/4c/AB_de_villiers_%28cropped%29.jpg/440px-AB_de_villiers_%28cropped%29.jpg",
      "https://upload.wikimedia.org/wikipedia/commons/thumb/5/51/Yashasvi-Jaiswal-Images2.jpg/440px-Yashasvi-Jaiswal-Images2.jpg",
    ],
    [
      "https://upload.wikimedia.org/wikipedia/commons/3/34/Shubman_Gill_2023_%28cropped%29.jpg",
      "https://upload.wikimedia.org/wikipedia/commons/e/ef/Virat_Kohli_during_the_India_vs_Aus_4th_Test_match_at_Narendra_Modi_Stadium_on_09_March_2023.jpg",
      "https://upload.wikimedia.org/wikipedia/commons/thumb/c/cc/Rohit_Gurunath_Sharma.jpg/440px-Rohit_Gurunath_Sharma.jpg",
    ],
    [
      "https://upload.wikimedia.org/wikipedia/commons/2/2a/Kane_Williamson_in_2019.jpg",
      "https://upload.wikimedia.org/wikipedia/commons/thumb/4/40/Steve_Smith_%2848094026552%29.jpg/440px-Steve_Smith_%2848094026552%29.jpg",
      "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f7/Joe_Root_HIP1487_%28cropped%29.jpg/440px-Joe_Root_HIP1487_%28cropped%29.jpg",
    ],
  ];

  List matchname = ["T-20", "ONE DAY", "Test-Match"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Cricket Player",
          style: TextStyle(
              fontSize: 40, fontWeight: FontWeight.w600, color: Colors.pink),
        ),
        backgroundColor: Colors.orange,
      ),
      body: ListView.separated(
          itemCount: imageList.length,
          separatorBuilder: (BuildContext context, int index) {
            return Container(
              height: 20,
              width: 20,
              color: Colors.blue,
            );
          },
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                Text(
                  matchname[index],
                  style: const TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.italic),
                ),
                ListView.builder(
                  physics: const ScrollPhysics(parent: null),
                  shrinkWrap: true,
                  itemCount: imageList[index].length,
                  itemBuilder: (BuildContext context, int index1) {
                    return Container(
                      height: 500,
                      width: 150,
                      margin: const EdgeInsets.all(10),
                      child: Image.network(
                        imageList[index][index1],
                        fit: BoxFit.cover,
                      ),
                    );
                  },
                ),
              ],
            );
          }),
    );
  }
}
