import 'package:flutter/material.dart';

class CulinariaPage extends StatelessWidget {
  const CulinariaPage({super.key});

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
          crossAxisAlignment: CrossAxisAlignment.start, 
          children: [
            // 1. Imagem fixa no topo
            SizedBox(
              width: double.infinity, 
              height: 250,            
              child: Image.asset(
                'img/culinaria.jpg',
                fit: BoxFit.cover,    
              ),
            ),

            const SizedBox(height: 20),

            // 2. Título "Cultura" Centralizado
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Center(
                child: Text(
                  "CULINÁRIA",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 32, 
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
              ),
            ),
            
            // 3. Imagem do Bigode colada
            Center(
              child: Transform.translate(
                offset: const Offset(0, -20),
                child: Image.asset(
                  'img/bigode.png',
                  width: 100,
                  height: 50,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            
            const SizedBox(height: 10),

            // 4. Caixa de Texto Vermelha e Imagem à direita lado a lado
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xFFC8102E),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      padding: const EdgeInsets.all(12.0),
                      child: const Text(
                        "A culinária mexicana é considerada Patrimônio Cultural Imaterial da Humanidade. Ela combina ingredientes tradicionais utilizados pelos povos indígenas, como milho, feijão, pimentas e abacate, com influências da culinária espanhola",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          height: 1.4,
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(width: 10,),
                  
                  // Imagem fora da caixa (Danca)
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      'img/tacos.jpg',
                      width: 180,
                      height: 180,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),

            // 4. Imagem do Cacto
            Center(
              child: Transform.translate(
                offset: const Offset(0, -130), 
                child: Image.asset(
                  'img/comidas.png',
                  width: 400,
                  height: 400,
                  fit: BoxFit.contain,
                ),
              ),
            ),

            // 5. Segunda Row puxada para cima para colar no cacto
            Transform.translate(
              offset: const Offset(0, -270),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [                  
                    // Imagem fora da caixa (Caveira)
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(
                        'img/restaurante.jpg',
                        width: 180,
                        height: 180,
                        fit: BoxFit.cover,
                      ),
                    ),

                    const SizedBox(width: 10),

                    // Caixa vermelha com texto
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0xFFC8102E),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        padding: const EdgeInsets.all(12.0),
                        child: const Text(
                          "Entre os pratos típicos mais conhecidos estão os tacos, tortillas, burritos, nachos, guacamole, chilli com carne, mixiote e tamales. As bebidas tradicionais incluem tequila, mezcal, cerveja, rum e piña colada.",
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
            ),
          ],
        ),
      ),
    );  
  }
}