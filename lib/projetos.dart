import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProjetosPage extends StatelessWidget {
  const ProjetosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('Meus Projetos'),
        centerTitle: true,
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          // Lista de cards
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(16),
              children: const [
                ProjetoCard(
                  titulo: 'Pokemón',
                  descricao: 'Projeto desenvolvido para amostra das cartas',
                ),
                ProjetoCard(
                  titulo: 'Plataforma de Sensores',
                  descricao: 'Seu objetivo é cadastrar sensores e buscar dados via API.',
                ),
                ProjetoCard(
                  titulo: 'Aplicativo do Clima 1.0',
                  descricao: 'App de clima que consome API para mostrar o tempo atual.',
                ),
                ProjetoCard(
                  titulo: 'Calculadora IMC',
                  descricao: 'Projeto simples que calcula o IMC com base nos dados do usuário.',
                ),
              ],
            ),
          ),

          // Botão "Voltar para o Início"
          Padding(
            padding: const EdgeInsets.only(bottom: 50),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // Volta para a tela anterior
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                textStyle: GoogleFonts.oswald(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              child: const Text("Voltar para o Início"),
            ),
          ),
        ],
      ),
    );
  }
}

class ProjetoCard extends StatelessWidget {
  final String titulo;
  final String descricao;

  const ProjetoCard({
    super.key,
    required this.titulo,
    required this.descricao,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey[900],
      margin: const EdgeInsets.only(bottom: 16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              titulo,
              style: GoogleFonts.oswald(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              descricao,
              style: GoogleFonts.oswald(
                fontSize: 14,
                color: Colors.white70,
              ),
            ),
            const SizedBox(height: 12),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  // Aqui você pode abrir detalhes ou link do projeto
                },
                child: Text(
                  'Ver mais',
                  style: GoogleFonts.oswald(
                    color: Colors.blueAccent,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
