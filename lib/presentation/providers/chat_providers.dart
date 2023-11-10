import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/messages.dart';

// class ChatProvider extends ChangeNotifier{
//   List<Messages> messagesList = [
//     Messages(text: 'Hola!', fromWho: FromWho.me),
//     Messages(text: 'Quieres pizza?', fromWho: FromWho.me)
//   ];

//   Future<void> sendMessage(String text) async {
//     //TODO implementar método
//   }
// }

class ChatProvider extends ChangeNotifier{
  List<Messages> messagesList = [
    Messages(text: 'Hola mi amor', fromWho: FromWho.me),
    Messages(text: 'Quieres ir por pizza?', fromWho: FromWho.me)
  ];

  Future<void> sendMessage(String text) async {
    //TODO implementar método
  }
}