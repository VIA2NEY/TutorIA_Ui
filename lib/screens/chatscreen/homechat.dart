import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tutoria/screens/chatscreen/data/bd_message.dart';
import 'package:tutoria/screens/chatscreen/data/modelMessage.dart';
import 'package:tutoria/screens/chatscreen/widgets/chat_list_view.dart';
import 'package:tutoria/theme/app_theme.dart';
import 'package:tutoria/utils/constants.dart';


class ChatView extends StatefulWidget {
  const ChatView({Key? key}) : super(key: key);

  @override
  ChatViewState createState() => ChatViewState();
}

class ChatViewState extends State<ChatView> {
  TextEditingController textEditingController = TextEditingController();
  late String senderMessage, receiverMessage;
  ScrollController scrollController = ScrollController();

  Future<void> scrollAnimation() async {
    return await Future.delayed(
        const Duration(milliseconds: 100),
            () => scrollController.animateTo(
            scrollController.position.maxScrollExtent,
            duration: const Duration(milliseconds: 300),
            curve: Curves.linear));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CircleAvatar(
              backgroundColor: Color(0xFF90C953),
              child: Text('X',
                  style: TextStyle(
                    color: Colors.black,
                  )),
            ),
            SizedBox(
              width: 2.w,
            ),
            Text(
              'TutorIA',
              style: kDisplayH1.copyWith(fontSize: 20.sp),
            ),
          ],
        ),
        elevation: 0,
        centerTitle: true,
        backgroundColor: AppTheme.ligthGray,
        foregroundColor: Color(0xFF27354B)
      ),

      
      body: Column(
        children: [
          Expanded(child: ChatListView(scrollController: scrollController)),
          Container(
            // height: 50,
            margin: const EdgeInsets.all(8.0),
            decoration: const BoxDecoration(
                shape: BoxShape.rectangle,
                color: Color(0xFF4960f7),
                borderRadius: BorderRadius.all(Radius.circular(15.0))),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                // Container(
                //   margin:
                //   const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 12.0),
                //   child: Transform.rotate(
                //       angle: 45,
                //       child: const Icon(
                //         Icons.attach_file_sharp,
                //         color: Colors.white,
                //       )),
                // ),
                SizedBox(width: 20.0,),
                Expanded(
                  child: TextFormField(
                    controller: textEditingController,
                    cursorColor: Colors.white,
                    keyboardType: TextInputType.multiline,
                    minLines: 1,
                    maxLines: 6,
                    style: const TextStyle(color: Colors.white),
                    decoration: const InputDecoration(
                      hintText: 'Posez votre question ici...',
                      hintStyle: TextStyle(color: Colors.grey),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                Container(
                  margin:
                  const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 11.0),
                  child: Transform.rotate(
                    angle: -3.14 / 5,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 5.0),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            messageList.add(
                                MessageData(textEditingController.text, true));
                            textEditingController.clear();
                            scrollAnimation();
                          });
                        },
                        onLongPress: () {
                          setState(() {
                            messageList.add(
                                MessageData(textEditingController.text, false));
                            textEditingController.clear();
                            scrollAnimation();
                          });
                        },
                        child: const Icon(
                          Icons.send,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}