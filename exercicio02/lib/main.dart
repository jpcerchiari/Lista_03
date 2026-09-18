import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class Livro {
  final String titulo;
  final String autor;

  Livro({required this.titulo, required this.autor});
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TelaLivros(),
    );
  }
}

class TelaLivros extends StatelessWidget {
  const TelaLivros({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Livro> livros = [
      Livro(titulo: 'Dom Casmurro', autor: 'Machado de Assis'),
      Livro(titulo: 'O Cortiço', autor: 'Aluísio Azevedo'),
      Livro(titulo: 'Vidas Secas', autor: 'Graciliano Ramos'),
      Livro(titulo: 'Capitães da Areia', autor: 'Jorge Amado'),
      Livro(titulo: 'A Hora da Estrela', autor: 'Clarice Lispector'),
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Catálogo de Livros')),
      body: ListView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: livros.length,
        itemBuilder: (context, index) {
          final Livro livro = livros[index];

          return Card(
            child: ListTile(
              leading: const Icon(Icons.menu_book, size: 35),
              title: Text(livro.titulo),
              subtitle: Text(livro.autor),
            ),
          );
        },
      ),
    );
  }
}
