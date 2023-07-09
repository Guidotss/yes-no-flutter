import 'package:flutter/material.dart';
import 'package:yes_no_app/presentation/widgets/chat/her_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/chat/my_message_bubble.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Ana",),
        
        leading: const Padding(
          padding: EdgeInsets.all(3.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage("https://instagram.fcor2-2.fna.fbcdn.net/v/t51.2885-19/285269113_734421467583190_7250682974974397494_n.jpg?stp=dst-jpg_s320x320&_nc_ht=instagram.fcor2-2.fna.fbcdn.net&_nc_cat=110&_nc_ohc=YJ0LLtIW5IMAX93e0SL&edm=AOQ1c0wBAAAA&ccb=7-5&oh=00_AfBBK97zHFOQlBDc_2NtoMyrrsuj7tI3vTLtV97uc8KjNw&oe=64AFB8FE&_nc_sid=8b3546"),
          ),
        )
      ),
      body: _ChatView(),
    ); 
  }
}

class _ChatView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            const SizedBox(height: 30),
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return (index % 2 == 0 ? const HerMessageBubble() : const MyMessageBubble()); 
                },
              )
            ),
            const Text("Hola"),
            const Text("Mundo"),
          ],
          
        ),
      ),
    ); 
  }
}