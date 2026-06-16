import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp (title: "App",
      home: MainApp(),));
}

class MainApp extends StatefulWidget {
const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 237, 185, 250),
        body:  Center( 
          child:Column(
           //Alinha no centro da página - vertical - , 
           //com distribuição uniforme
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[ 
              const Text(
                'CADASTRO PARA EVENTO',
                style: TextStyle(
                  fontSize: 30.0, // Define o tamanho da fonte
                  fontWeight: FontWeight.bold, // Deixa o texto em negrito
                  fontFamily: 'Roboto',
                )),
            //TextFormField é uma caixa texto para entrada de dados 
            //Pode ser decoradpo para ficar mais bonito visualmente
            
              SizedBox(
              width: 600,
              child: TextFormField(
              decoration: const InputDecoration(
              isDense: true,
              icon: Icon(Icons.person),
              contentPadding: EdgeInsets.symmetric(vertical: 15),
              border: OutlineInputBorder(),
              hintText: 'Entrada de texto',
              labelText: 'Nome',
            ),
          ),
        ),

           
              SizedBox(
              width: 600,
              child: TextFormField(
              decoration: const InputDecoration(
              isDense: true,
              icon: Icon(Icons.mail),
              contentPadding: EdgeInsets.symmetric(vertical: 15),
              border: OutlineInputBorder(),
              hintText: 'Entrada de texto',
              labelText: 'E-mail',
            ),
          ),
        ),              //o const é solicitado ´pois ainda não há tratamento
              SizedBox(
              width: 600,
              child: TextFormField(
              obscureText: true,
              obscuringCharacter: '.',
              decoration: const InputDecoration(
              isDense: true,
              icon: Icon(Icons.lock),
              contentPadding: EdgeInsets.symmetric(vertical: 15),
              border: OutlineInputBorder(),
              hintText: 'Entrada de texto',
              labelText: 'Senha',
            ),
          ),
        ),

              SizedBox(
              width: 600,
              child: TextFormField(
              obscureText: true,
              obscuringCharacter: '.',
              decoration: const InputDecoration(
              isDense: true,
              icon: Icon(Icons.shield),
              contentPadding: EdgeInsets.symmetric(vertical: 15),
              border: OutlineInputBorder(),
              hintText: 'Entrada de texto',
              labelText: 'Confirme a senha',
            ),
          ),
        ),
          
         Image.asset(
         'img/letras.png',width: 500,height: 500,),

              SizedBox(
              width: 600,
              child: TextFormField(
              decoration: const InputDecoration(
              isDense: true,
              icon: Icon(Icons.priority_high),
              contentPadding: EdgeInsets.symmetric(vertical: 15),
              border: OutlineInputBorder(),
              hintText: 'Entrada de texto',
              labelText: 'Digite os caracteres acima',
            ),
          ),
        ),
      ]
        
      ))
     ),
    );
  }
}
