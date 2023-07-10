import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  MessageFieldBox({super.key});

  final textController = TextEditingController(); 

  @override
  Widget build(BuildContext context) {

    //final colors = Theme.of(context).colorScheme; 

    final outlineInputBorder = UnderlineInputBorder(
      borderSide:const BorderSide(color: Colors.transparent),
      borderRadius: BorderRadius.circular(40)
    ); 

    final inputDecoration = InputDecoration(
      hintText: 'End your message with a "??"',
      enabledBorder: outlineInputBorder,
      focusedBorder: outlineInputBorder,
      filled: true,
      suffixIcon: IconButton(
        icon: const Icon(Icons.send_outlined),
        onPressed: () {},
      )
    ); 

    return TextFormField(
      controller: textController,
      decoration: inputDecoration,
      onFieldSubmitted: ( value ) {
        print(value); 
      },
    ); 
  }
}