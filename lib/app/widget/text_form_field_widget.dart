import 'package:flutter/material.dart';

class TextFormFieldWidget extends StatelessWidget {
  const TextFormFieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.8,
      height: size.height * 0.1,
      child: TextFormField(
        decoration: InputDecoration(
           
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(12))),

        
      ),
    );
  }
}
