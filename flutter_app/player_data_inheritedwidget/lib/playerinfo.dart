import 'package:flutter/material.dart';

import 'main.dart';

class Info extends StatefulWidget {
  const Info({super.key});

  @override
  State<Info> createState() => _InfoState();
}

class _InfoState extends State<Info> {
  @override
  Widget build(BuildContext context) {
    // PlayerData playerDataObj = PlayerData.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Player Info "),
        backgroundColor: Colors.amber,
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Center(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const PlayerInfoData(),
            GestureDetector(
              onTap: () {
                setState(() {
                  Player.of(context).changeIPLTeam("CSK");
                });
              },
              child: const Text(
                "Change IPL Team ",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        )),
      ),
    );
  }
}

class PlayerInfoData extends StatefulWidget {
  const PlayerInfoData({super.key});

  @override
  State<PlayerInfoData> createState() => _PlayerInfoDataState();
}

class _PlayerInfoDataState extends State<PlayerInfoData> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Player Name :",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "${Player.of(context).plyName}",
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Player Country:",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "${Player.of(context).contyName}",
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Player IPL Team :",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "${Player.of(context).iplTeamName}",
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 60,
        ),
      ],
    );
  }
}
