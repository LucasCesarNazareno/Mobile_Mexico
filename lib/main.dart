import 'dart:ui';
import 'package:flutter/material.dart';
import 'culinaria.dart';
import 'cultura.dart'; 
import 'geografia.dart'; // <--- Importado aqui!

void main() {
  runApp(MaterialApp(
    scrollBehavior: const MaterialScrollBehavior().copyWith(
      dragDevices: {PointerDeviceKind.touch, PointerDeviceKind.mouse},
    ),
    title: "App",
    home: const MainApp(),
  ));
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: SingleChildScrollView( 
        child: Column(
          children: [
            // 1. Imagem fixa no topo
            SizedBox(
              width: double.infinity, 
              height: 300,            
              child: Image.asset(
                'img/MÉXICO.jpg',
                fit: BoxFit.cover,    
              ),
            ),
            
            const SizedBox(height: 20),
            
            // 2. O Carrossel baseado no modelo da professora
            SizedBox(
              height: 200.0,
              child: CarouselView(
                itemExtent: 200, 
                // Captura o clique direto pelo Carrossel através do index (posição do item)
                onTap: (int index) {
                  if (index == 0) { // 0 é a posição da imagem de Culinária
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const CulinariaPage(),
                        settings: const RouteSettings(arguments: 'Culinária Mexicana'),
                      ),
                    );
                  }
                  else if (index == 1) { // 1 é a posição da imagem de Cultura
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const CulturaPage(),
                        settings: const RouteSettings(arguments: 'Cultura Mexicana'),
                      ),
                    );
                  }
                  else if (index == 2) { // 2 é a posição da imagem de Geografia
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const GeografiaPage(),
                        settings: const RouteSettings(arguments: 'Geografia Mexicana'),
                      ),
                    );
                  }
                  // Aqui você adicionará as outras páginas depois:
                  // else if (index == 3) { ... México Geral ... }
                },
                children: [
                  // Posição 0 (Culinária)
                  Image.asset('img/culinaria.jpg', fit: BoxFit.cover),
                  
                  // Posição 1 (Cultura)
                  Image.asset('img/cultura.jpg', fit: BoxFit.cover),
                  
                  // Posição 2 (Geografia)
                  Image.asset('img/geografia.jpg', fit: BoxFit.cover),
                  
                  // Posição 3
                  Image.asset('img/MÉXICO.jpg', fit: BoxFit.cover),
                ],
              ),
            ),

            const SizedBox(height: 40),

            // 3. Título dos Desenvolvedores
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                "DESENVOLVEDORES",
                style: TextStyle(
                  fontSize: 35,               
                  fontWeight: FontWeight.bold, 
                  color: Colors.black87,       
                ),
              ),
            ),

            const SizedBox(height: 20),

            // 4. Imagens dos Desenvolvedores
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0), 
              child: Row(
                children: [
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12), 
                      child: Image.asset(
                        'img/lucas.jpg',
                        height: 300,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(width: 16), 
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(
                        'img/guilherme.jpg',
                        height: 300,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}