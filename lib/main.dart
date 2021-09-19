import 'package:flutter/material.dart';

void main() {
  runApp(const Login());
}

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Filas columnas gg',
      theme: ThemeData( 
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Filas, columnas y botones'),
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
  @override
  Widget build(BuildContext context) {    
    return Scaffold(
      body: cuerpo()
    );
  }
}

Widget cuerpo(){
  return Container(
    decoration: const BoxDecoration(
      image: DecorationImage(image: NetworkImage("https://i.redd.it/rce8wzeh75o71.jpg"),
      fit: BoxFit.cover
      )
    ),
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          nombre(),
          campoUsuario(),
          campoContrasena(),
          const SizedBox(height: 10),
          botonEntrar()
        ]
      )
    )
  );
}

Widget nombre(){
  return const Text("Sign in", style: TextStyle(color: Colors.white, fontSize: 37, fontWeight: FontWeight.bold ));
} 

Widget campoUsuario(){
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    child: const TextField(
      decoration: InputDecoration(
        hintText: "Usuario",
        fillColor: Colors.white,
        filled: true
      ),
    ),
  );
}

Widget campoContrasena(){
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    child: const TextField(
      obscureText: true,

      decoration: InputDecoration(
        hintText: "Contraseña",
        fillColor: Colors.white,
        filled: true
      ),
    ),
  );
}

Widget botonEntrar(){
  return FlatButton(
    color: Colors.deepPurple,
    padding: const EdgeInsets.symmetric(horizontal: 75, vertical: 10),
    onPressed: (){}, 
    child: const Text("Ok! :D", style: TextStyle(fontSize: 20, color: Colors.white),)
  );
}