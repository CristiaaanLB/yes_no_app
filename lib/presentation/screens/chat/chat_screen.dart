import 'package:flutter/material.dart';
import 'package:yes_no_app/presentation/widgets/chat/her_messages_bubble.dart';
import 'package:yes_no_app/presentation/widgets/chat/my_messages_bubble.dart';
import 'package:yes_no_app/presentation/widgets/shared/messages_field_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({ super.key });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage('https://cdn4.iconfinder.com/data/icons/avatars-xmas-giveaway/128/batman_hero_avatar_comics-512.png'),
            //backgroundImage: NetworkImage('https://www.eluniversal.com.mx/resizer/dtpTZGCQJxwIVKem64uEGbTRdV4=/1100x666/cloudfront-us-east-1.images.arcpublishing.com/eluniversal/ON6XW5S5JZDFJKAXP4RLYZO7OM.jpg'),
          ),
        ),

        title: const Text('Batman'),
        //title: const Text('Mi Crush'),
        centerTitle: false,
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
          Expanded(child: ListView.builder(
            itemCount: 100,
            itemBuilder: (context, index){
              return ( index % 2 == 0)
              ? const HerMessagesBubble()
              : const MyMessageBubble();
            }
          )),
          const MessagesFieldBox(),
        ]
        )
      ),
    );
  }
}