import "package:flutter/material.dart";

void main() {
  runApp(MaterialApp(home: HomePage()));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 216, 72, 120),
          leading: Icon(Icons.home),
          title: Center(child: Text("Tugas 4 Flutter")),
          actions: [
            Icon(Icons.search),
          ],
        ),
        body: Container(
          color: Colors.blue,
          child: Column(
            children: <Widget>[
              Image.network(
                  "https://images.pexels.com/photos/2919720/pexels-photo-2919720.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
              Padding(padding: EdgeInsets.only(bottom: 10.0)),
              CardImages(),
              Padding(
                padding: EdgeInsets.only(top: 10.0),
              ),
              Text("View Image Mountain",
                  style: TextStyle(color: Colors.red, fontSize: 30.0))
            ],
          ),
        ));
  }
}

class CardImages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Card(
            color: Colors.white,
            child: Column(
              children: <Widget>[
                Text(""),
                Image.network(
                  "https://images.pexels.com/photos/417173/pexels-photo-417173.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
                  height: 110.0,
                ),
                Text("GAMBAR 1", style: TextStyle(fontSize: 20.0, height: 2.0)),
              ],
            )),
        Card(
            color: Colors.white,
            child: Column(
              children: <Widget>[
                Text(""),
                Image.network(
                    "https://images.pexels.com/photos/371633/pexels-photo-371633.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
                    height: 110.0),
                Text("GAMBAR 2",
                    style: TextStyle(
                        fontSize: 20.0, height: 2.0, color: Colors.red)),
              ],
            )),
      ],
    );
  }
}
