import "package:flutter/material.dart";

class ListViewBuilder extends StatefulWidget {
  const ListViewBuilder({super.key});

  @override
  State<ListViewBuilder> createState() => _ListViewBuilderState();
}

class _ListViewBuilderState extends State<ListViewBuilder> {
  List<String> imagesList = [
    "https://img.freepik.com/free-photo/beautiful-scenery-summit-mount-everest-covered-with-snow-white-clouds_181624-21317.jpg?size=626&ext=jpg&ga=GA1.1.1637394871.1705463981&semt=sph",
    "https://img.freepik.com/free-photo/maldives-island_74190-477.jpg?size=626&ext=jpg&ga=GA1.1.1637394871.1705463981&semt=sph",
    "https://img.freepik.com/free-photo/lake-mountains_1204-502.jpg?size=626&ext=jpg&ga=GA1.1.1637394871.1705463981&semt=sph",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("ListviewBuilder"),
      ),
      body: ListView.builder(
          itemCount: imagesList.length,
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.all(10),
              child: Image.network(
                imagesList[index],
              ),
            );
          }),
    );
  }
}
