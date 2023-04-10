import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../shared/components/bottom_app_bar_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          bottom: true,
          child: Container(
            color: Colors.white,
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(
                    left: 20,
                    right: 20,
                    top: 60,
                  ),
                  child: Row(children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        gradient: const LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Color(0xFF4236F1),
                              Color(0xFF8743FF),
                            ]),
                      ),
                      child: const Icon(
                        Icons.person,
                        color: Colors.white,
                        size: 40,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text('Hello, Siddharth',
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 20,
                                  color: Color(0xFF01031D))),
                          Text(
                            "Welcome back to you'r account.",
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 13,
                                color: Colors.grey),
                          )
                        ],
                      ),
                    )
                  ]),
                ),
                Container(
                  margin: const EdgeInsets.only(
                      top: 30, left: 20, bottom: 30, right: 20),
                  padding: const EdgeInsets.only(top: 30, bottom: 30),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: const LinearGradient(
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight,
                        colors: [
                          Color.fromARGB(255, 192, 11, 238),
                          Color.fromARGB(175, 102, 37, 233),
                          Color.fromARGB(227, 243, 129, 64),
                        ],
                        stops: [
                          0.1,
                          0.4,
                          0.8
                        ]),
                  ),
                  child: Column(
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              'Total Balance',
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Color(0xA3FFFFFF),
                                  fontSize: 13),
                            )
                          ]),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              '66000',
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700),
                            )
                          ]),
                      Container(
                        margin:
                            const EdgeInsets.only(top: 20, left: 20, right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Row(
                                  children: const [
                                    Padding(
                                      padding: EdgeInsets.only(right: 5),
                                      child: Icon(
                                        CupertinoIcons.arrow_down_circle_fill,
                                        color: Colors.green,
                                      ),
                                    ),
                                    Text(
                                      'Income',
                                      style: TextStyle(
                                        color: Color(0xA3FFFFFF),
                                        fontFamily: 'Poppins',
                                      ),
                                    ),
                                  ],
                                ),
                                const Text(
                                  '66000',
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Row(
                                  children: const [
                                    Padding(
                                      padding: EdgeInsets.only(right: 5),
                                      child: Icon(
                                        CupertinoIcons.arrow_up_circle_fill,
                                        color: Colors.red,
                                      ),
                                    ),
                                    Text(
                                      'Expense',
                                      style: TextStyle(
                                        color: Color(0xA3FFFFFF),
                                        fontFamily: 'Poppins',
                                      ),
                                    ),
                                  ],
                                ),
                                const Text(
                                  '50000',
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700),
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    children: const [
                      Text(
                        'Statistics',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 20,
                            color: Color.fromARGB(184, 139, 139, 139),
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Card(
                        child: Container(
                          width: MediaQuery.of(context).size.width / 2 - 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: const LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Color(0xFF4236F1),
                                  Color(0xFF8743FF),
                                ]),
                          ),
                          padding: const EdgeInsets.all(20),
                          child: Column(children: const [
                            Text(
                              '100',
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700),
                            ),
                            Text('Daily expense',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Color(0xA3FFFFFF),
                                    fontSize: 13)),
                          ]),
                        ),
                      ),
                      Card(
                        child: Container(
                          width: MediaQuery.of(context).size.width / 2 - 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: const LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Color(0xFF4236F1),
                                  Color(0xFF8743FF),
                                ]),
                          ),
                          padding: const EdgeInsets.all(20),
                          child: Column(children: const [
                            Text(
                              '1500',
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700),
                            ),
                            Text('Weekly expense',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Color(0xA3FFFFFF),
                                    fontSize: 13)),
                          ]),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Card(
                        child: Container(
                          width: MediaQuery.of(context).size.width / 2 - 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: const LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Color(0xFF4236F1),
                                  Color(0xFF8743FF),
                                ]),
                          ),
                          padding: const EdgeInsets.all(20),
                          child: Column(children: const [
                            Text(
                              '20k',
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700),
                            ),
                            Text('Montly expense',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Color(0xA3FFFFFF),
                                    fontSize: 13)),
                          ]),
                        ),
                      ),
                      Card(
                        child: Container(
                          width: MediaQuery.of(context).size.width / 2 - 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: const LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Color(0xFF4236F1),
                                  Color(0xFF8743FF),
                                ]),
                          ),
                          padding: const EdgeInsets.all(20),
                          child: Column(children: const [
                            Text(
                              '50K',
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700),
                            ),
                            Text('Yearly expense',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Color(0xA3FFFFFF),
                                    fontSize: 13)),
                          ]),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )),
      floatingActionButton: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          gradient: const LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFF4236F1),
                Color(0xFF8743FF),
              ]),
        ),
        child: FloatingActionButton(
          elevation: 0,
          backgroundColor: Colors.transparent,
          onPressed: () {
            // Navigator.push(context,
            //     CupertinoPageRoute(builder: (context) => const DialerView()));
          },
          child: const Icon(
            Icons.add,
            // Icons.currency_rupee,
            size: 30,
            weight: 1,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: const BottomAppBarView(activePageName: 'dialer'),
    );
  }
}
