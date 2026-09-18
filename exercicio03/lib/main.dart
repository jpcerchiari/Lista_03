import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class Aluno {
  final String nome;
  final double nota;

  Aluno({required this.nome, required this.nota});
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TelaAlunos(),
    );
  }
}

class TelaAlunos extends StatelessWidget {
  const TelaAlunos({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Aluno> alunos = [
      Aluno(nome: 'Ana', nota: 8.5),
      Aluno(nome: 'Bruno', nota: 7.0),
      Aluno(nome: 'Carla', nota: 9.2),
      Aluno(nome: 'Diego', nota: 6.8),
      Aluno(nome: 'Eduarda', nota: 10.0),
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Lista de Alunos')),
      body: ListView.builder(
        itemCount: alunos.length,
        itemBuilder: (context, index) {
          final Aluno aluno = alunos[index];

          return ListTile(
            leading: const Icon(Icons.person),
            title: Text(aluno.nome),
            subtitle: Text('Nota: ${aluno.nota.toStringAsFixed(1)}'),
          );
        },
      ),
    );
  }
}
