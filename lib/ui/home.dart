import 'package:flutter/material.dart';
void _onSearch()
{
  print("Search Pressed");
}
class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.blueGrey,
        title: new Text("Let's Go!!"),
        actions: <Widget>[
          new IconButton(
              icon: new Icon(Icons.send), onPressed: () => debugPrint("Send")),
          new IconButton(icon: new Icon(Icons.search), onPressed: _onSearch)
        ],
      ),
      backgroundColor: Colors.lightGreenAccent.shade100,
      body: new Container(
        alignment: Alignment.center,
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text("Hello Pari :) ",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.orange
              ),),
            new Text("How are you? ",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Colors.black
              ),),
            new InkWell(
              child: new Text("Button",
                  style: TextStyle(
                      fontSize: 20
                  )),
              onTap: () => debugPrint('Butten tapped'),
            ),
          ],
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: () => debugPrint('pressed'),
        backgroundColor: Colors.lightGreen,
        tooltip: "go up",
        child: new Icon(Icons.call_missed),
      ),
      bottomNavigationBar: new BottomNavigationBar(items: [
        new BottomNavigationBarItem(
            icon: new Icon(Icons.arrow_left), title: new Text("Back")),
        new BottomNavigationBarItem(
            icon: new Icon(Icons.print), title: new Text("Print")),
        new BottomNavigationBarItem(
            icon: new Icon(Icons.arrow_right), title: new Text("Forward"))
      ]),
    );
  }
}