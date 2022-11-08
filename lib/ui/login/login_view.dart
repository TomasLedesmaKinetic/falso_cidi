import 'package:falso_cidi/ui/home/home_view.dart';
import 'package:falso_cidi/ui/registrar/registrar_view.dart';
import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: size.width,
      color: Colors.grey[800],
      child: Padding(
        padding: EdgeInsets.symmetric(
            vertical: size.height * 0.23, horizontal: size.width * 0.1),
        child: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            color: Colors.purple[100],
            child: Column(
              children: [
                SizedBox(
                  height: size.height * 0.03,
                ),
                const Text('Login View'),
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
                        width: size.width * 0.4,
                        child: IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) =>
                                        const HomeView(title: "Falso CiDi"))));
                          },
                          icon: const Icon(Icons.check),
                          color: Colors.purple,
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey[800],
                        ),
                        width: size.width * 0.15,
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.fingerprint),
                          color: Colors.purple,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
                  child: Center(
                    child: TextButton(
                        onPressed: () {},
                        child: const Text('Olvidaste tu Contraseña?')),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(size.width * 0.1,
                      size.height * 0.01, size.width * 0.1, size.height * 0.01),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey[800],
                    ),
                    width: size.width * 0.8,
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => const RegistrarView())));
                      },
                      child: const Text('Registrar',
                          style: TextStyle(color: Colors.purple)),
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
