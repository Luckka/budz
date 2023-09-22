import 'package:flutter/material.dart';

class RadioListTileComponent extends StatefulWidget {
  const RadioListTileComponent({super.key});

  @override
  State<RadioListTileComponent> createState() => _RadioListTileComponentState();
}

class _RadioListTileComponentState extends State<RadioListTileComponent> {
  @override
  Widget build(BuildContext context) {
    
    List<String> options = ['Eu não uso mais o Budz', 'Valores das assinaturas', 'Insatisfação com os serviços oferecidos', 'Tive problemas técnicos', 'Conteúdos ruins ou irrelevantes', 'Experiência e usabilidade', 'Outro'];

    return RadioListTile(
      groupValue: null, 
      onChanged: (value) { 
          setState(() {
            
          });
       },
      value: options,

    );
  }
}