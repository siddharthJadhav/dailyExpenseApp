import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          title: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: const Text(
              'Dashboard',
              textAlign: TextAlign.center,
              style: TextStyle(color: Color(0xFF696969)),
            ),
          )),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(left: 10, right: 10, top: 20),
              height: 160,
              width: MediaQuery.of(context).size.width,
              child: Card(
                  elevation: 10,
                  shape: const RoundedRectangleBorder(
                    side: BorderSide(
                      color: Colors.white,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 10, bottom: 10),
                        child: const Text(
                          'Statistics',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.only(left: 5),
                            width: MediaQuery.of(context).size.width / 4 - 7,
                            height: 100,
                            child: Card(
                              elevation: 5,
                              shape: const RoundedRectangleBorder(
                                side: BorderSide(
                                  color: Colors.transparent,
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12)),
                              ),
                              color: const Color(0xFF170E6C),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  RichText(
                                    text: const TextSpan(
                                        text: '30K',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                        children: [
                                          TextSpan(
                                              text: 'Rs',
                                              style: TextStyle(fontSize: 12))
                                        ]),
                                  ),
                                  const Text(
                                    'Year',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(left: 5),
                            width: MediaQuery.of(context).size.width / 4 - 7,
                            height: 100,
                            child: Card(
                              elevation: 5,
                              shape: const RoundedRectangleBorder(
                                side: BorderSide(
                                  color: Colors.transparent,
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12)),
                              ),
                              color: const Color(0xFF170E6C),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  RichText(
                                    text: const TextSpan(
                                        text: '15K',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                        children: [
                                          TextSpan(
                                              text: 'Rs',
                                              style: TextStyle(fontSize: 12))
                                        ]),
                                  ),
                                  const Text(
                                    'Month',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(left: 5),
                            width: MediaQuery.of(context).size.width / 4 - 7,
                            height: 100,
                            child: Card(
                              elevation: 5,
                              shape: const RoundedRectangleBorder(
                                side: BorderSide(
                                  color: Colors.transparent,
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12)),
                              ),
                              color: const Color(0xFF170E6C),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  RichText(
                                    text: const TextSpan(
                                        text: '2K',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                        children: [
                                          TextSpan(
                                              text: 'Rs',
                                              style: TextStyle(fontSize: 12))
                                        ]),
                                  ),
                                  const Text(
                                    'Week',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(left: 5, right: 5),
                            width: MediaQuery.of(context).size.width / 4 - 7,
                            height: 100,
                            child: Card(
                              elevation: 5,
                              shape: const RoundedRectangleBorder(
                                side: BorderSide(
                                  color: Colors.transparent,
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12)),
                              ),
                              color: const Color(0xFF170E6C),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  RichText(
                                    text: const TextSpan(
                                        text: '100',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                        children: [
                                          TextSpan(
                                              text: 'Rs',
                                              style: TextStyle(fontSize: 12))
                                        ]),
                                  ),
                                  const Text(
                                    'Day',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  )),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20, top: 30, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Expense',
                    style: TextStyle(fontSize: 25, color: Colors.grey),
                  ),
                  InkWell(
                      onTap: () {},
                      child: const Icon(
                        Icons.filter_alt,
                        color: Color(0xFF170E6C),
                        size: 30,
                      ))
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height - 336,
              child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      margin: const EdgeInsets.only(left: 20, right: 20),
                      height: 100,
                      child: Card(
                        elevation: 5,
                        child: Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.all(10),
                              width: 100,
                              child: RichText(
                                text: const TextSpan(
                                    text: '100',
                                    style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey),
                                    children: [
                                      TextSpan(
                                          text: 'Rs',
                                          style: TextStyle(fontSize: 12))
                                    ]),
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text('Food',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(top: 5, bottom: 5),
                                  child: const Text('Friday night dinner',
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Color(0xFF8A8A8A)
                                    ),
                                  ),
                                ),
                                const Text('Firday 10:30 pm',
                                 style: TextStyle(
                                    fontSize: 12,
                                    color: Color(0xFFB4B3B3)
                                  ),
                                  )
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
