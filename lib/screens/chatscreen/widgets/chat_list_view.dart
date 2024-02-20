import 'package:flutter/material.dart';
import 'package:tutoria/screens/chatscreen/data/bd_message.dart';
import 'package:tutoria/screens/chatscreen/widgets/reponse_row_view.dart';
import 'package:tutoria/screens/chatscreen/widgets/question_row_view.dart';


class ChatListView extends StatelessWidget {
  const ChatListView({Key? key, required this.scrollController}) : super(key: key);

  final ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      controller: scrollController,
      itemCount: messageList.length,
      itemBuilder: (context, index) => (messageList[index].isSender)
          ? QuestionRowView(senderMessage: messageList[index].message)
          : ReponseRowView(receiverMessage: messageList[index].message),
    );
  }
}
