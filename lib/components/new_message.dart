import 'package:chat_apk/core/services/auth/auth_service.dart';
import 'package:chat_apk/core/services/chat/chat_service.dart';
import 'package:flutter/material.dart';

class NewMessage extends StatefulWidget {
  const NewMessage({Key? key}) : super(key: key);

  @override
  State<NewMessage> createState() => _NewMessageState();
}

class _NewMessageState extends State<NewMessage> {

  String _message = '';
  final _messageController = TextEditingController();

  Future<void> _sendMessage() async {
    final user = AuthService().currentUser;

    if(user != null) {
      final msg = await ChatService().save(_message, user);
      // print(_message);
      // print(_messageController.text);
      //  print(msg?.userImageURL);
      //  print('aki');
    _messageController.clear();
    }    
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            controller: _messageController,
            onChanged: (msg) => setState(() => _message = msg),
            decoration: InputDecoration(
              labelText: 'Enviar mensagem...', 
            ),
          ),
        ),
        IconButton(
          icon: Icon(Icons.send),
          onPressed: _message.trim().isEmpty ? null : _sendMessage
        ),
      ],
    );
  }
}