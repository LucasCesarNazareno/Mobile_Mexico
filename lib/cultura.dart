import 'package:flutter/material.dart';

class CulturaPage extends StatelessWidget {
  const CulturaPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Captura os argumentos enviados pela rota
    final String tituloRecebido = ModalRoute.of(context)!.settings.arguments as String;

    return Scaffold(
      appBar: AppBar(
        title: Text(tituloRecebido),
        backgroundColor: const Color(0xFF006341), // Verde solicitado
        foregroundColor: Colors.white,
        elevation: 1,
      ),
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: SingleChildScrollView( 
        child: Column(
          // Alinha o conteúdo da coluna à esquerda (início)
          crossAxisAlignment: CrossAxisAlignment.start, 
          children: [
            // 1. Imagem fixa no topo
            SizedBox(
              width: double.infinity, 
              height: 250, // Ajustei um pouco a altura para ficar melhor visualmente            
              child: Image.asset(
                'img/cultura.jpg',
                fit: BoxFit.cover,    
              ),
            ),

            // Espaço entre a imagem e o título
// Espaço entre a imagem e o título
            const SizedBox(height: 20),

            // 2. Título "Cultura" Centralizado
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Center( // Adicionado o Center aqui
                child: Text(
                  "CULTURA",
                  textAlign: TextAlign.center, // Garante que o texto fique no centro
                  style: TextStyle(
                    fontSize: 32, 
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
              ),
            ),
            
            // 3. Imagem do Bigode colada (puxada para cima)
            Center(
              child: Transform.translate(
                offset: const Offset(0, -20), // O número -10 puxa a imagem para cima. Se precisar colar mais, tente -15 ou -20
                child: Image.asset(
                  'img/bigode.png',
                  width: 100,
                  height: 50,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            // Um pequeno espaço abaixo do título caso queira adicionar texto depois
            const SizedBox(height: 10),

            // 4. Imagem e Caixa de Texto Vermelha lado a lado
// 4. Caixa de Texto Vermelha e Imagem à direita lado a lado
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start, // Alinha o topo da caixa com o topo da imagem
                children: [
                  // 1. Caixa vermelha que envolve apenas o texto (agora na esquerda)
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xFFC8102E), // Vermelho solicitado
                        borderRadius: BorderRadius.circular(15), // Cantos arredondados da caixa
                      ),
                      padding: const EdgeInsets.all(12.0), // Espaço interno para o texto
                      child: const Text(
                        "A cultura mexicana é resultado da mistura entre as traditions indígenas e a herança espanhola. Os povos maias e astecas deixaram importantes contribuições para a arte, a arquitetura, a culinária e as tradições do país. Durante a colonização, os espanhóis também influenciaram fortemente os costumes mexicanos. Atualmente, a cultura dos Estados Unidos também exerce influência devido à globalização.",
                        textAlign: TextAlign.justify, // Mantém o texto alinhado à esquerda dentro da caixa
                        style: TextStyle(
                          color: Colors.white, // Texto branco para dar contraste
                          fontSize: 14,
                          height: 1.4,
                        ),
                      ),
                    ),
                  ),
                  
                  const SizedBox(width: 0), // Espaço entre a caixa vermelha e a imagem
                  
                  // 2. Imagem fora da caixa (agora na direita)
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12), // Cantos arredondados na imagem
                    child: Image.asset(
                      'img/danca.png',
                      width: 180, // Largura da imagem
                      height: 180, // Altura da imagem
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
            // Espaço no final da página para o scroll não cortar o conteúdo
            const SizedBox(height: 0),

// 4. Imagem do Cacto (Mantive igual ao seu)
            Center(
              child: Transform.translate(
                offset: const Offset(0, -20), 
                child: Image.asset(
                  'img/cacto.png',
                  width: 200,
                  height: 200,
                  fit: BoxFit.contain,
                ),
              ),
            ),

            // 5. Segunda Row puxada para cima para colar no cacto
            Transform.translate(
              offset: const Offset(0, -60), // Altere o -50 para -60 ou -70 se quiser mais colado ainda!
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [                  
                    // 2. Imagem fora da caixa (Caveira)
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(
                        'img/caveira.png',
                        width: 180,
                        height: 180,
                        fit: BoxFit.cover,
                      ),
                    ),

                    // Caixa vermelha com texto
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0xFFC8102E),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        padding: const EdgeInsets.all(12.0),
                        child: const Text(
                          "O México é conhecido por suas festas tradicionais, como o Dia dos Mortos, pela música mariachi, pelas danças folclóricas e pelo artesanato colorido. Seu patrimônio histórico e cultural atrai milhões de turistas todos os anos.",
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            height: 1.4,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),          ],
        ),
      ),
    );  
  }
}