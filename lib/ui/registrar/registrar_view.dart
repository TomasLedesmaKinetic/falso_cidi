import 'package:falso_cidi/ui/home/home_view.dart';
import 'package:falso_cidi/ui/login/login_view.dart';
import 'package:flutter/material.dart';

class RegistrarView extends StatefulWidget {
  const RegistrarView({Key? key}) : super(key: key);

  @override
  State<RegistrarView> createState() => _RegistrarViewState();
}

class _RegistrarViewState extends State<RegistrarView> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: size.width,
      color: Colors.grey[800],
      child: Padding(
        padding: EdgeInsets.symmetric(
            vertical: size.height * 0.11, horizontal: size.width * 0.05),
        child: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            color: Colors.purple[100],
            child: Column(
              children: [
                SizedBox(
                  height: size.height * 0.03,
                ),
                const Text('Registrar View'),
                SizedBox(
                  height: size.height * 0.02,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: size.width * 0.1,
                      vertical: size.height * 0.01),
                  child: const TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), labelText: 'CUIL'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: size.width * 0.1,
                      vertical: size.height * 0.01),
                  child: const TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), labelText: 'Contraseña'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: size.width * 0.1,
                      vertical: size.height * 0.01),
                  child: const TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), labelText: 'Nombre'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: size.width * 0.1,
                      vertical: size.height * 0.01),
                  child: const TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), labelText: 'Apellido'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: size.width * 0.1,
                      vertical: size.height * 0.01),
                  child: const TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), labelText: 'Mail'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: size.width * 0.1,
                      vertical: size.height * 0.01),
                  child: const TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), labelText: 'Celular'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(size.width * 0.1,
                      size.height * 0.03, size.width * 0.1, size.height * 0.01),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey[800],
                        ),
                        width: size.width * 0.2,
                        child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(Icons.arrow_back_ios),
                          color: Colors.purple,
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey[800],
                        ),
                        width: size.width * 0.45,
                        child: IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) => const LoginView())));
                          },
                          icon: const Icon(Icons.check),
                          color: Colors.purple,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
