import 'package:chat/proceso/autenticacion.dart';
import 'package:flutter/material.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

final email = TextEditingController();
final password = TextEditingController();

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Registro - CHAT LIVE"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image(
                  image: NetworkImage(
                      "https://previews.123rf.com/images/faysalfarhan/faysalfarhan1605/faysalfarhan160503766/56945849-bot%C3%B3n-brillante-de-color-amarillo-vivo-de-chat-ronda.jpg")),
            ),
            TextField(
                controller: email,
                decoration: InputDecoration(
                    hintText: "Email", suffixIcon: Icon(Icons.email))),
            TextField(
                obscureText: true,
                controller: password,
                decoration: InputDecoration(
                    hintText: "Password", suffixIcon: Icon(Icons.key))),
            Divider(),
            ElevatedButton.icon(
                onPressed: () {
                  Autenticacion().IniciarSesion(
                      email: email.text, password: password.text);
                },
                icon: Icon(Icons.login),
                label: Text("Iniciar Sesion")),
            Divider(),
            ElevatedButton.icon(
                onPressed: () {
                  Autenticacion()
                      .CrearUsuario(email: email.text, password: password.text);
                },
                icon: Icon(Icons.person_add),
                label: Text("Registrar Usuarios"))
          ],
        ),
      ),
    );
  }
}
