import 'package:flutter/material.dart';

class Assignment5 extends StatefulWidget {
  const Assignment5({super.key});

  @override
  State<Assignment5> createState() => _Assignment5State();
}

class _Assignment5State extends State<Assignment5> {
  bool _like_icons1 = false;
  bool _like_icons2 = false;
  bool _like_icons3 = false;
  bool _like_icons4 = false;
  bool _like_icons5 = false;

  bool _bookmarks1 = false;
  bool _bookmarks2 = false;
  bool _bookmarks3 = false;
  bool _bookmarks4 = false;
  bool _bookmarks5 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "Instagram",
          style: TextStyle(
            fontStyle: FontStyle.italic,
            color: Colors.black,
            fontSize: 30,
          ),
        ),
        actions: const [
          Icon(
            Icons.favorite_rounded,
            color: Colors.red,
          )
        ],
      ),
      /* body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: Colors.amber,
                child: Image.network(
                  "https://images.pexels.com/photos/33109/fall-autumn-red-season.jpg?auto=compress&cs=tinysrgb&w=800",
                  width: double.infinity,
                  height: 200,
                ),
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.favorite_outline_outlined,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.comment_outlined,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.send,
                    ),
                  ),
                ],
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: Colors.amber,
                child: Image.network(
                  "https://images.pexels.com/photos/33109/fall-autumn-red-season.jpg?auto=compress&cs=tinysrgb&w=800",
                  width: double.infinity,
                  height: 200,
                ),
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.favorite_outline_outlined,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.comment_outlined,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.send,
                    ),
                  ),
                ],
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: Colors.amber,
                child: Image.network(
                  "https://images.pexels.com/photos/33109/fall-autumn-red-season.jpg?auto=compress&cs=tinysrgb&w=800",
                  width: double.infinity,
                  height: 200,
                ),
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.favorite_outline_outlined,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.comment_outlined,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.send,
                    ),
                  ),
                ],
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: Colors.amber,
                child: Image.network(
                  "https://images.pexels.com/photos/33109/fall-autumn-red-season.jpg?auto=compress&cs=tinysrgb&w=800",
                  width: double.infinity,
                  height: 200,
                ),
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.favorite_outline_outlined,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.comment_outlined,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.send,
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),*/
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  color: Colors.white,
                  child: Image.network(
                    "https://images.pexels.com/photos/33109/fall-autumn-red-season.jpg?auto=compress&cs=tinysrgb&w=800",
                    width: double.infinity,
                    height: 200,
                  ),
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          _like_icons1 = !_like_icons1;
                        });
                      },
                      icon: _like_icons1
                          ? const Icon(
                              Icons.favorite_rounded,
                              color: Colors.red,
                            )
                          : const Icon(
                              Icons.favorite_outline_outlined,
                            ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.comment_outlined,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.send,
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          _bookmarks1 = !_bookmarks1;
                        });
                      },
                      icon: _bookmarks1
                          ? const Icon(
                              Icons.bookmark_rounded,
                              color: Colors.black,
                            )
                          : const Icon(
                              Icons.bookmark_outline,
                            ),
                    ),
                  ],
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  color: Colors.white,
                  child: Image.network(
                    "https://images.pexels.com/photos/1198802/pexels-photo-1198802.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
                    width: double.infinity,
                    height: 200,
                  ),
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          _like_icons2 = !_like_icons2;
                        });
                      },
                      icon: Icon(
                        _like_icons2
                            ? Icons.favorite_rounded
                            : Icons.favorite_outline_outlined,
                        color: _like_icons2 ? Colors.red : Colors.black,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.comment_outlined,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.send,
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          _bookmarks2 = !_bookmarks2;
                        });
                      },
                      icon: _bookmarks2
                          ? const Icon(
                              Icons.bookmark_rounded,
                              color: Colors.black,
                            )
                          : const Icon(
                              Icons.bookmark_outline,
                            ),
                    ),
                  ],
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  color: Colors.white,
                  child: Image.network(
                    "https://images.pexels.com/photos/443446/pexels-photo-443446.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
                    width: double.infinity,
                    height: 200,
                  ),
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          _like_icons3 = !_like_icons3;
                        });
                      },
                      icon: Icon(
                        _like_icons3
                            ? Icons.favorite_rounded
                            : Icons.favorite_outline_outlined,
                        color: _like_icons3 ? Colors.red : Colors.black,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.comment_outlined,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.send,
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          _bookmarks3 = !_bookmarks3;
                        });
                      },
                      icon: _bookmarks3
                          ? const Icon(
                              Icons.bookmark_rounded,
                              color: Colors.black,
                            )
                          : const Icon(
                              Icons.bookmark_outline,
                            ),
                    ),
                  ],
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  color: Colors.white,
                  child: Image.network(
                    "https://images.pexels.com/photos/459203/pexels-photo-459203.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
                    width: double.infinity,
                    height: 200,
                  ),
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          _like_icons4 = !_like_icons4;
                        });
                      },
                      icon: Icon(
                        _like_icons4
                            ? Icons.favorite_rounded
                            : Icons.favorite_outline_outlined,
                        color: _like_icons4 ? Colors.red : Colors.black,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.comment_outlined,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.send,
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          _bookmarks4 = !_bookmarks4;
                        });
                      },
                      icon: _bookmarks4
                          ? const Icon(
                              Icons.bookmark_rounded,
                              color: Colors.black,
                            )
                          : const Icon(
                              Icons.bookmark_outline,
                            ),
                    ),
                  ],
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  color: Colors.white,
                  child: Image.network(
                    "https://images.pexels.com/photos/516541/pexels-photo-516541.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
                    width: double.infinity,
                    height: 200,
                  ),
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          _like_icons5 = !_like_icons5;
                        });
                      },
                      icon: Icon(
                        _like_icons5
                            ? Icons.favorite_rounded
                            : Icons.favorite_outline_outlined,
                        color: _like_icons5 ? Colors.red : Colors.black,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.comment_outlined,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.send,
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          _bookmarks5 = !_bookmarks5;
                        });
                      },
                      icon: _bookmarks5
                          ? const Icon(
                              Icons.bookmark_rounded,
                              color: Colors.black,
                            )
                          : const Icon(
                              Icons.bookmark_outline,
                            ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
