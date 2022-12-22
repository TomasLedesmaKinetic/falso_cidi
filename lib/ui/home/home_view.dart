import 'package:falso_cidi/ui/notificaciones/notificaciones_view.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

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
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const NotificacionesView()));
                },
                icon: const Icon(Icons.notifications_rounded))
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: true,
          showUnselectedLabels: false,
          currentIndex: _selectedIndex, //New
          onTap: _onItemTapped,
          backgroundColor: Colors.purple[100],
          items: const [
            (BottomNavigationBarItem(
                icon: Icon(Icons.home_filled), label: 'Home')),
            BottomNavigationBarItem(
                icon: Icon(Icons.file_copy_rounded), label: 'Documentos'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Cuenta'),
          ]),
      body: _selectedIndex == 0
          ? Center(
              child: SizedBox(
                height: size.height * 0.9,
                width: size.width * 0.9,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(top: size.height * 0.02),
                      child: Row(
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
                              Text('Nivel x',
                                  style: TextStyle(color: Colors.white)),
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(
                                vertical: size.height * 0.02),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.purple[300],
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: size.width * 0.05,
                                  vertical: size.height * 0.01),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  Icon(Icons.add),
                                  Text('Subir Nivel'),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin:
                          EdgeInsets.symmetric(vertical: size.height * 0.02),
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
                    Container(
                      margin:
                          EdgeInsets.symmetric(vertical: size.height * 0.02),
                      child: GridView(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4,
                        ),
                        shrinkWrap: true,
                        children: [
                          Container(
                            height: size.height * 0.01,
                            margin: EdgeInsets.symmetric(
                                vertical: size.height * 0.03,
                                horizontal: size.width * 0.02),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.purple[300],
                            ),
                            child: IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.more_horiz_rounded)),
                          ),
                          Container(
                            height: size.height * 0.01,
                            margin: EdgeInsets.symmetric(
                                vertical: size.height * 0.03,
                                horizontal: size.width * 0.02),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.purple[300],
                            ),
                            child: IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.more_horiz_rounded)),
                          ),
                          Container(
                            height: size.height * 0.01,
                            margin: EdgeInsets.symmetric(
                                vertical: size.height * 0.03,
                                horizontal: size.width * 0.02),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.purple[300],
                            ),
                            child: IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.more_horiz_rounded)),
                          ),
                          Container(
                            height: size.height * 0.01,
                            margin: EdgeInsets.symmetric(
                                vertical: size.height * 0.03,
                                horizontal: size.width * 0.02),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.purple[300],
                            ),
                            child: IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.more_horiz_rounded)),
                          ),
                          Container(
                            height: size.height * 0.01,
                            margin: EdgeInsets.symmetric(
                                vertical: size.height * 0.03,
                                horizontal: size.width * 0.02),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.purple[300],
                            ),
                            child: IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.more_horiz_rounded)),
                          ),
                          Container(
                            height: size.height * 0.01,
                            margin: EdgeInsets.symmetric(
                                vertical: size.height * 0.03,
                                horizontal: size.width * 0.02),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.purple[300],
                            ),
                            child: IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.more_horiz_rounded)),
                          ),
                          Container(
                            height: size.height * 0.01,
                            margin: EdgeInsets.symmetric(
                                vertical: size.height * 0.03,
                                horizontal: size.width * 0.02),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.purple[300],
                            ),
                            child: IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.more_horiz_rounded)),
                          ),
                          Container(
                            height: size.height * 0.01,
                            margin: EdgeInsets.symmetric(
                                vertical: size.height * 0.03,
                                horizontal: size.width * 0.02),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.purple[300],
                            ),
                            child: IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.more_horiz_rounded)),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          : _selectedIndex == 1
              ? documentosBody()
              : _selectedIndex == 2
                  ? cuentaBody()
                  : Container(),
    );
  }

  Widget documentosBody() {
    return const Center(
      child: Text('Documentos'),
    );
  }

  Widget cuentaBody() {
    return const Center(
      child: Text('Cuenta'),
    );
  }
}
