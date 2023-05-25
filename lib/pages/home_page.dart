import 'package:flutter/material.dart';
import 'package:pantallaslogin/pages/login_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const WelcomeScreen(),
        '/login_page': (context) => const LoginScreen(),
      },
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF222222), // Color de fondo oscuro
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: const Color(0xFFDDB44C), // Color de fondo del círculo
              ),
              child: Center(
                child: Image.asset(
                  'assets/images/img1.png', // Ruta de la imagen
                  width: 150, // Ancho de la imagen
                  height: 150, // Alto de la imagen
                ),
              ),
            ),
            const SizedBox(height: 30), // Espacio vertical entre el círculo y el texto
            const Text(
              '¡Bienvenido Usuario!',
              style: TextStyle(
                color: Colors.white, // Color del texto
                fontSize: 24, // Tamaño de la fuente
                fontWeight: FontWeight.bold, // Grosor del texto
              ),
            ),
            const SizedBox(height: 15),
            const Text('Hola que tal, en este sistema podrás hacer control de tu casa',
              style: TextStyle(
                color: Colors.white, // Color del texto
                fontSize: 12, // Tamaño de la fuente
              ),
            ),
            const SizedBox(height: 30), // Espacio vertical entre el texto y el botón
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context) => const LoginScreen()),);
              },
              child: const Text(
                'Comencemos >',
                style: TextStyle(
                  fontSize: 25, // Tamaño de la fuente del botón
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}