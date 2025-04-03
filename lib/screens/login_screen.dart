import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    final passwordController = TextEditingController();

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Iniciar sesión", style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
            const SizedBox(height: 40),
            TextField(
              controller: emailController,
              decoration: const InputDecoration(labelText: "Correo electrónico"),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: passwordController,
              obscureText: true,
              decoration: const InputDecoration(labelText: "Contraseña"),
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                // Lógica de login
                print('Email: ${emailController.text}');
                print('Password: ${passwordController.text}');
              },
              child: const Text("Ingresar"),
            ),
            TextButton(
              onPressed: () {
                // Navegar a la pantalla de registro
              },
              child: const Text("¿No tienes cuenta? Crear una"),
            ),
          ],
        ),
      ),
    );
  }
}
