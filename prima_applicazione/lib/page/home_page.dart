import 'package:flutter/material.dart';
import 'package:prima_applicazione/components/character_stat_editor.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text("Crea il tuo personaggio"),
      centerTitle: true,
      ),
      body:Column(children: [
        CharacterStatEditor(
          label: "Forza",
          initialValue:2,
        ),
        CharacterStatEditor(
          label: "Resistenza",
          initialValue:5,
        ),
        CharacterStatEditor(
          label: "Agilità",
          initialValue:3,
        ),
      ]),
   );
  }
}

