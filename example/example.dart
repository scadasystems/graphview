import 'package:flutter/material.dart';

import 'GraphViewClusterPage.dart';
import 'TreeViewPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(children: [
          FlatButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Scaffold(
                      appBar: AppBar(),
                      body: TreeViewPage(),
                    )),
              ),
              child: Text(
                "Tree View (BuchheimWalker)",
                style: TextStyle(color: Theme.of(context).primaryColor),
              )),
          FlatButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Scaffold(
                      appBar: AppBar(),
                      body: GraphClusterViewPage(),
                    )),
              ),
              child: Text(
                "Graph Cluster View (FruchtermanReingold)",
                style: TextStyle(color: Theme.of(context).primaryColor),
              )),
        ]),
      ),
    );
  }
}