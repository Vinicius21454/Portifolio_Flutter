import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart'; // Importe para usar GoogleFonts aqui

class SobreMimPage extends StatelessWidget {
  const SobreMimPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('Sobre Mim'),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(28.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Sobre Mim',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 24),
            const Text(
              'Olá! Eu sou Vinicius Marucci Neves, um desenvolvedor front-end apaixonado por criar interfaces bonitas, modernas e funcionais.\n'
              'Meu objetivo é sempre entregar produtos que não apenas pareçam ótimos, mas também ofereçam uma experiência perfeita ao usuário. Acredito que a tecnologia deve ser acessível, intuitiva e visualmente agradável.\n'
              'Tenho experiência com tecnologias como HTML, CSS, JavaScript e outras ferramentas voltadas para o desenvolvimento de interfaces responsivas e eficientes. Busco constantemente evoluir meus conhecimentos por meio de cursos, projetos e desafios práticos.\n'
              'Gosto de transformar ideias em realidade digital, prestando atenção a cada detalhe para garantir um resultado de qualidade. Valorizo o trabalho em equipe, feedbacks construtivos e boas práticas de código.\n'
              'Meu maior compromisso é com a excelência e com a experiência do usuário.',
              style: TextStyle(
                color: Colors.white70,
                fontSize: 18,
                height: 1.5,
              ),
            ),
            const SizedBox(height: 40),
            const Text(
              'Nome:',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 4),
            const Text(
              'Vinicius Marucci Neves',
              style: TextStyle(color: Colors.white70, fontSize: 17),
            ),
            const SizedBox(height: 20),
            const Text(
              'E-mail:',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 4),
            const Text(
              'viniciusmarucci13@gmail.com',
              style: TextStyle(color: Colors.white70, fontSize: 17),
            ),
            const SizedBox(height: 20),
            const Text(
              'Idade:',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 4),
            const Text(
              '18 anos',
              style: TextStyle(color: Colors.white70, fontSize: 17),
            ),
            const SizedBox(height: 20),
            const Text(
              'Localização:',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 4),
            const Text(
              'Santa Barbara D Oeste, São Paulo BR.',
              style: TextStyle(color: Colors.white70, fontSize: 17),
            ),
            const Spacer(),

            // Botão Voltar com fonte Oswald
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context); // Volta para a tela anterior
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30,
                    vertical: 14,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text(
                  "Voltar para o Início",
                  style: GoogleFonts.oswald(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
