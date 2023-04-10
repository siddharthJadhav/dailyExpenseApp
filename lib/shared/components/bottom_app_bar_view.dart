import 'package:flutter/material.dart';

class BottomAppBarView extends StatelessWidget {

  final String activePageName;

  const BottomAppBarView({
    super.key, required this.activePageName
  });

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      height: 50,
      notchMargin: 0,
      shape: const CircularNotchedRectangle(),
      color: Colors.white,
      child: IconTheme(
        data: IconThemeData(color: Theme.of(context).colorScheme.onPrimary),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              // color: Colors.red,
              width: MediaQuery.of(context).size.width / 2 - 30,
              margin: const EdgeInsets.only(
                right: 30,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    icon: Icon(Icons.home,
                    color: activePageName == 'home' ? const Color.fromRGBO(133, 141, 255, 1.0) : const Color.fromRGBO(110, 128, 170, 1.0),
                    size: 25
                    ),
                    onPressed: () {
                      // if(activePageName != 'home') {
                      //   Navigator.push(context, CupertinoPageRoute(builder: (BuildContext context) => const HomeView()));
                      // }
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.wallet,
                    color: activePageName == 'callLogs' ? const Color.fromRGBO(133, 141, 255, 1.0) : const Color.fromRGBO(110, 128, 170, 1.0),
                    size: 25),
                    onPressed: () {
                      // if(activePageName != 'callLogs') {
                      //   Navigator.push(context, CupertinoPageRoute(builder: (BuildContext context) => const RecentCallView()));
                      // }
                    },
                  ),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width / 2 - 30,
              margin: const EdgeInsets.only(
                left: 30,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    icon: Icon(Icons.message,
                    color: activePageName == 'message' ? const Color.fromRGBO(133, 141, 255, 1.0) : const Color.fromRGBO(110, 128, 170, 1.0),
                    size: 25),
                    onPressed: () {
                      // if(activePageName != 'message'){
                      //   Navigator.push(context, CupertinoPageRoute(builder: (BuildContext context) => const MessageListView()));
                      // }
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.settings,
                    color: activePageName == 'settings' ? const Color.fromRGBO(133, 141, 255, 1.0) : const Color.fromRGBO(110, 128, 170, 1.0),
                    size: 25),
                    onPressed: () {},
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
