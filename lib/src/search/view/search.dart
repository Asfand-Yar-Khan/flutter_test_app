import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  "https://www.google.com/maps/d/u/0/thumbnail?mid=1_wV22amgac2Wt4gvMqstKu57Fg0&hl=en_US"),
              fit: BoxFit.cover)),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 250,
                  )
                ],
              ),
            ]),
            Container(
              margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
              height: 550,
              decoration: const BoxDecoration(
                  color: Color.fromRGBO(64, 82, 198, 1),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: Column(
                children: [
                  const TextField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(30, 20, 30, 20),
                      border: InputBorder.none,
                      hintText: 'Search any place',
                      hintStyle: TextStyle(color: Colors.white),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 20),
                    height: 491,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20))),
                    child: Column(children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(15),
                            child: const Text(
                              "3 places found",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(15),
                            child: const Text(
                              "See all",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  color: Colors.grey),
                            ),
                          )
                        ],
                      ),
                      Expanded(
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Card(
                                child: Container(
                                    height: 400,
                                    width: 250,
                                    decoration: const BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(20)),
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQ5uMHZviPa53Yps9uaLI8XLfTqCV2jmFQ0vcwzecm&s"),
                                          fit: BoxFit.cover),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          alignment: Alignment.topLeft,
                                          padding: const EdgeInsets.fromLTRB(
                                              15, 10, 10, 10),
                                          child: Container(
                                              padding: const EdgeInsets.all(10),
                                              decoration: const BoxDecoration(
                                                  color: Colors.amber,
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(30))),
                                              child: Text("1")),
                                        ),
                                        Column(children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 20,
                                                          top: 20,
                                                          right: 20),
                                                  child: const SizedBox(
                                                      width: 90,
                                                      child: Text(
                                                        'Bo,box stay California',
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 18),
                                                      ))),
                                              Container(
                                                padding:
                                                    EdgeInsets.only(right: 15),
                                                alignment: Alignment.bottomLeft,
                                                child: const Icon(
                                                  Icons.bookmark,
                                                  size: 20,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Container(
                                              alignment: Alignment.centerLeft,
                                              padding: const EdgeInsets.all(15),
                                              child: const SizedBox(
                                                  width: 90,
                                                  child: Text(
                                                    '128£',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(
                                                        color: Colors.orange,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 18),
                                                  ))),
                                        ]),
                                      ],
                                    )),
                              ),
                              Card(
                                child: Container(
                                    height: 400,
                                    width: 250,
                                    decoration: const BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(20)),
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcStUTB_lNn9PVdAxTLyWpqZ8kDWsokYjdMMW1UHv3ZH&s"),
                                          fit: BoxFit.cover),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          alignment: Alignment.topLeft,
                                          padding: const EdgeInsets.fromLTRB(
                                              15, 10, 10, 10),
                                          child: Container(
                                              padding: const EdgeInsets.all(10),
                                              decoration: const BoxDecoration(
                                                  color: Colors.amber,
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(30))),
                                              child: Text("2")),
                                        ),
                                        Column(children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 20,
                                                          top: 20,
                                                          right: 20),
                                                  child: const SizedBox(
                                                      width: 90,
                                                      child: Text(
                                                        'Bo,box stay California',
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 18),
                                                      ))),
                                              Container(
                                                padding:
                                                    EdgeInsets.only(right: 15),
                                                alignment: Alignment.bottomLeft,
                                                child: const Icon(
                                                  Icons.bookmark,
                                                  size: 20,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Container(
                                              alignment: Alignment.centerLeft,
                                              padding: const EdgeInsets.all(15),
                                              child: const SizedBox(
                                                  width: 90,
                                                  child: Text(
                                                    '128£',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(
                                                        color: Colors.orange,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 18),
                                                  ))),
                                        ]),
                                      ],
                                    )),
                              ),
                              Card(
                                child: Container(
                                    height: 400,
                                    width: 250,
                                    decoration: const BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(20)),
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              "https://archello.s3.eu-central-1.amazonaws.com/images/2018/01/31/ModernApartmentExteriorDesign8.1517370640.4789.jpg"),
                                          fit: BoxFit.cover),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          alignment: Alignment.topLeft,
                                          padding: const EdgeInsets.fromLTRB(
                                              15, 10, 10, 10),
                                          child: Container(
                                              padding: const EdgeInsets.all(10),
                                              decoration: const BoxDecoration(
                                                  color: Colors.amber,
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(30))),
                                              child: Text("3")),
                                        ),
                                        Column(children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 20,
                                                          top: 20,
                                                          right: 20),
                                                  child: const SizedBox(
                                                      width: 90,
                                                      child: Text(
                                                        'Bo,box stay California',
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 18),
                                                      ))),
                                              Container(
                                                padding:
                                                    EdgeInsets.only(right: 15),
                                                alignment: Alignment.bottomLeft,
                                                child: const Icon(
                                                  Icons.bookmark,
                                                  size: 20,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Container(
                                              alignment: Alignment.centerLeft,
                                              padding: const EdgeInsets.all(15),
                                              child: const SizedBox(
                                                  width: 90,
                                                  child: Text(
                                                    '128£',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(
                                                        color: Colors.orange,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 18),
                                                  ))),
                                        ]),
                                      ],
                                    )),
                              ),
                            ],
                          ),
                        ),
                      )
                    ]),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
