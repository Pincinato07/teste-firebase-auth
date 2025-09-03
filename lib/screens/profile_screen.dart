import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class ProfileScreen extends StatelessWidget {
  final User user;
  const ProfileScreen({super.key, required this.user});

  Future<void> _logout(BuildContext context) async {
    await FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Teste de autenticação Firebase - Perfil')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.person, size: 80),
            const SizedBox(height: 16),
            Text(user.email ?? 'Sem email'),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () => _logout(context),
              child: const Text('Sair'),
            ),
          ],
        ),
      ),
    );
  }
}


