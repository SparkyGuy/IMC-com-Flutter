import 'package:flutter/material.dart';

class HomePage  extends StatelessWidget {
  const HomePage ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calculadore IMC do Arthur e do Otávio"), 
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
      
        Icon(
          Icons.fitness_center),
          TextField(
            decoration: InputDecoration(
              label: Text("Peso")),
          ),
          TextField(
            decoration: InputDecoration(
              label: Text("Altura")),
          ),
      ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          var peso = 0.0;
          var altura = 0.0;
          var imc = 0.0;
          if (altura > 0.0) {
          imc = peso / (altura*altura); 
          }

          ScaffoldMessenger.of(context).showSnackBar( SnackBar(
            content: Text("Seu IMC é $imc"),
          ));
        },
        child: const Icon(Icons.calculate)
      ),
    );
  }
}