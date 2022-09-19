import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Troca de serviço',
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        home: meuWidget(context));
  }

  meuWidget(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Troca de serviço"),
        centerTitle: true,
      ),
      body: body(context),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        backgroundColor: Colors.green,
        fixedColor: Colors.black,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Inicial'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Pesquisa'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person), label: 'Minha conta'),
        ],
      ),
    );
  }

  Container bodyx() {
    return Container(
      color: Colors.white,
    );
  }

  body(BuildContext context) {
    return GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 1,
        mainAxisSpacing: 1,
        crossAxisCount: 1,
        childAspectRatio: 2,
        children: <Widget>[
          GestureDetector(
            onTap: () {}, // Image tapped
            child: Image.asset(
              'assets/defeitos/a111/def1.png',
              fit: BoxFit.cover, // Fixes border issues
              width: 10.0,
              height: 10.0,
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(8, 1, 8, 8),
            child: ElevatedButton(
              child: Text("Professor Inglês"),
              onPressed: () {},
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(8, 1, 8, 8),
            child: ElevatedButton(
              child: Text("Programador"),
              onPressed: () {},
            ),
          )
        ]);
  }
}
