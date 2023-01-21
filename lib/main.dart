import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<String> _listItem = [
    "assets/images/nft1.png",
    "assets/images/nft2.png",
    "assets/images/nft3.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade300,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.blue.shade300,
        title: Text('NFT Collection App'),
      ),
      body: SafeArea(
          child: Container(
              padding: EdgeInsets.all(20.0),
              child: Column(
                children: <Widget>[
                  Expanded(
                      child: GridView.count(
                    crossAxisCount: 2,
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 10,
                    children: _listItem
                        .map((item) => Card(
                              color: Colors.transparent,
                              elevation: 0,
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    image: DecorationImage(
                                        image: AssetImage(item),
                                        fit: BoxFit.cover)),
                              ),
                            ))
                        .toList(),
                  ))
                ],
              ))),
      bottomNavigationBar: BottomAppBar(
          color: Colors.grey.shade900,
          shape: CircularNotchedRectangle(),
          child: Container(
              height: 80,
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () => {},
                      icon: Icon(
                        Icons.home,
                        color: Colors.white,
                        size: 30,
                      )),
                  IconButton(
                      onPressed: () => {},
                      icon: Icon(
                        Icons.search,
                        color: Colors.white,
                        size: 30,
                      )),
                  IconButton(
                      onPressed: () => {},
                      icon: Icon(
                        Icons.person,
                        color: Colors.white,
                        size: 30,
                      )),
                ],
              ))),
    );
  }
}
