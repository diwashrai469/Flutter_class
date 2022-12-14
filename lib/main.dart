import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: homepage(),
  ));
}

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        leading: Builder(builder: (context) {
          return ElevatedButton(
            onPressed: () {
              Scaffold.of(context).openDrawer(); //open drawer in scaffold
            },
            child: Icon(
              Icons.close,
            ),
          );
        }),
        centerTitle: true,
        title: Text(
          "about page",
        ),
        actions: [
          ElevatedButton(onPressed: () {}, child: Icon(Icons.card_giftcard)),
          ElevatedButton(
              onPressed: () {}, child: Icon(Icons.card_travel_rounded)),
        ],
      ),
      body: Center(child: Text("Hello world")),
      drawer: Drawer(
        child: ListView(children: [
          Icon(Icons.image_aspect_ratio_outlined),
          ElevatedButton(onPressed: () {}, child: Icon(Icons.card_giftcard)),
          ElevatedButton(
              onPressed: () {}, child: Icon(Icons.card_travel_rounded)),
          Divider(),
          Card(
            child: ListTile(title: Text("menu")),
          ),
          Card(
            child: ListTile(title: Text("menu")),
          ),
          Card(
            child: ListTile(title: Text("menu")),
          )
        ]),
      ),
    ));
  }
}
