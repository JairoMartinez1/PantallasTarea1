import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const TopBar(),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.grey.shade800, Colors.grey.shade400],
                ),
              ),
              padding: const EdgeInsets.all(16.0),
              child: const LoginContent(),
            ),
          ),
        ],
      ),
    );
  }
}

class TopBar extends StatelessWidget {
  const TopBar({Key? key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue[900],
      padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
      child: Row(
        children: [
          IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () {
              // Lógica para volver a la pantalla anterior
              Navigator.pop(context);
            },
          ),
          const Expanded(
            child: Center(
              child: Text(
                'Sistema IA de Casa Inteligente',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class LoginContent extends StatefulWidget {
  const LoginContent({Key? key});

  @override
  _LoginContentState createState() => _LoginContentState();
}

class _LoginContentState extends State<LoginContent> {
  bool _obscureText = true;

  void _togglePasswordVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ConstrainedBox(
        constraints: BoxConstraints(
          minHeight: MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Favor de Ingresar sus Credenciales de Acceso para poder Continuar:',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 16.0),
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.person, color: Colors.orange),
                labelText: 'Usuario',
                fillColor: Colors.white,
                filled: true,
              ),
            ),
            const SizedBox(height: 16.0),
            TextFormField(
              obscureText: _obscureText,
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.lock, color: Colors.orange),
                labelText: 'Contraseña',
                fillColor: Colors.white,
                filled: true,
                suffixIcon: IconButton(
                  icon: Icon(
                    _obscureText ? Icons.visibility_off : Icons.visibility,
                    color: Colors.grey,
                  ),
                  onPressed: _togglePasswordVisibility,
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Lógica para iniciar sesión
                // Puedes agregar aquí la validación de los campos y otras funcionalidades
                print('Iniciar sesión');
              },
              child: const Text('Iniciar sesión'),
              style: ElevatedButton.styleFrom(
                primary: Colors.orange,
                onPrimary: Colors.white,
              ),
            ),
            const SizedBox(height: 5.0),
            ElevatedButton.icon(
              onPressed: () {
                // Lógica para iniciar sesión con Google
                print('Iniciar sesión con Google');
              },
              icon: const Icon(Icons.login, color: Colors.white),
              label: const Text('Iniciar sesión con Google'),
              style: ElevatedButton.styleFrom(
                primary: Colors.red,
              ),
            ),
            const SizedBox(height: 5.0),
            ElevatedButton.icon(
              onPressed: () {
                // Lógica para iniciar sesión con Facebook
                print('Iniciar sesión con Facebook');
              },
              icon: const Icon(Icons.login, color: Colors.white),
              label: const Text('Iniciar sesión con Facebook'),
              style: ElevatedButton.styleFrom(
                primary: Colors.blueAccent,
              ),
            ),
            const SizedBox(height: 5.0),
            TextButton(
              onPressed: () {
                // Lógica para recuperar la contraseña
                print('Olvidaste tu contraseña');
              },
              child: const Text(
                '¿Olvidaste tu contraseña?',
                style: TextStyle(
                  color: Colors.black,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
            const SizedBox(height: 10.0),
            Image.asset(
              'assets/images/img1.png', // Ruta de la imagen
              height: 70.0,
            ),
            const SizedBox(height: 1.0),
            const Text(
              'Controla tu casa inteligente desde cualquier lugar',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}