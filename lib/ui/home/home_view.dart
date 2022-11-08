import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purpleAccent,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(widget.title),
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.notifications_rounded))
          ],
        ),
      ),
      body: Center(
        child: SizedBox(
          height: size.height * 0.9,
          width: size.width * 0.9,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(
                    Icons.person_rounded,
                    color: Colors.white,
                  ),
                  Column(
                    children: const [
                      Text('Nombre y Apellido',
                          style: TextStyle(color: Colors.white)),
                      Text('Nivel x', style: TextStyle(color: Colors.white)),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: size.height * 0.02),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.purple[300],
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: size.width * 0.05,
                          vertical: size.height * 0.01),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Icon(Icons.add),
                          Text('Subir Nivel'),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: size.height * 0.02),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.purple[100],
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: size.width * 0.05,
                      vertical: size.height * 0.01),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text('Que estas buscando?'),
                      Icon(Icons.search_rounded)
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
