import 'dart:io';
import 'package:flutter/material.dart';
import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:typewritertext/typewritertext.dart';
import '../models/chat_models.dart';
import '../theme/app_theme.dart';
import '../utils/constants.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  late bool isLoading;
  final List<ChatMessage> _messages = [];
  final TextEditingController _textController = TextEditingController();
  final _scrollController = ScrollController();

  Future<void> sendMessage(String message) async {
    try {
// ...

      String apiKey = 'AIzaSyCBqLbtIns5MARHgFtw4R5FdQgHG18opwk';

      final model = GenerativeModel(model: 'gemini-pro', apiKey: apiKey);

      final content = [Content.text(message)];
      final response = await model.generateContent(content);
      print(response.text);

      // afficher l'entrée de l'utilisateur

      setState(() {
        _messages.add(ChatMessage(content: response.text!, is_bot_text: true));
        isLoading = false;
      });

      Future.delayed(const Duration(microseconds: 50))
          .then((value) => _scrollDown());
    } catch (error) {
      rethrow;
    }
  }

  @override
  void initState() {
    super.initState();
    isLoading = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CircleAvatar(
              backgroundImage: AssetImage('assets/images/bot.jpeg'),
              radius: 20,
            ),
            SizedBox(
              width: 2.w,
            ),
            Text(
              'Tutoria',
              style: kDisplayH1.copyWith(fontSize: 20.sp),
            ),
          ],
        ),
        elevation: 0,
        centerTitle: true,
        backgroundColor: AppTheme.ligthGray,
      ),
      backgroundColor: AppTheme.ligthGray,
      body: Column(
        children: [
          Expanded(child: _buildList()),
          // CircularProgressIndicator is bot not anwser user question
          Visibility(
            visible: isLoading,
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: CircularProgressIndicator(
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Row(
              children: [
                // chat body
                // l'input de saisie de l'user et le btn d'envoi
                _buildInput(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Expanded _buildInput() {
    return Expanded(
      child: TextField(
        textCapitalization: TextCapitalization.sentences,
        style: const TextStyle(color: Colors.white),
        controller: _textController,
        decoration: InputDecoration(
          fillColor: const Color(0xff27354B),
          hintText: 'Type something here.....',
          hintStyle:
              kDisplayArticleH4.copyWith(color: Colors.white, fontSize: 17.sp),
          filled: true,
          border: kChatInput,
          enabledBorder: kChatInput,
          errorBorder: InputBorder.none,
          disabledBorder: kChatInput,
          focusedBorder: kChatInput,
          suffixIcon: IconButton(
            onPressed: () async {
              setState(() {
                _messages.add(ChatMessage(
                    content: _textController.text, is_bot_text: false));
                isLoading = true;
              });

              _scrollDown();
              // on recupere la saisie de l'user au sein d'une variable et on vide le texfield
              var input = _textController.text;
              _textController.clear();
              await sendMessage(input);
            },
            icon: const Icon(
              Icons.send,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSubmit() {
    return Visibility(
      visible: !isLoading,
      child: Container(
        color: Colors.grey[600],
        child: IconButton(
          onPressed: () async {
            await sendMessage(_textController.text);
            // afficher l'entrée de l'utilisateur
            setState(() {
              _messages.add(
                ChatMessage(content: _textController.text, is_bot_text: false),
              );
              isLoading = true;
            });

            // on recupere la saisie de l'user au sein d'une variable et on vide le texfield
            var input = _textController.text;
            _textController.clear();
            Future.delayed(const Duration(microseconds: 50))
                .then((value) => _scrollDown());

            //API Call
            _textController.clear();
            Future.delayed(const Duration(microseconds: 50))
                .then((value) => _scrollDown());
          },
          icon: const Icon(
            Icons.send_rounded,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  // funtion to anime scrolling after user entry
  void _scrollDown() {
    _scrollController.animateTo(_scrollController.position.maxScrollExtent,
        duration: const Duration(milliseconds: 300), curve: Curves.easeOut);
  }

  ListView _buildList() {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: _messages.length,
      controller: _scrollController,
      itemBuilder: ((context, index) {
        var message = _messages[index];
        return ChatMessageWidget(
          content: message.content,
          is_bot_text: message.is_bot_text,
        );
      }),
    );
  }
}

class ChatMessageWidget extends StatelessWidget {
  const ChatMessageWidget(
      {super.key, required this.content, required this.is_bot_text});

  final String content;
  final bool is_bot_text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 15),
      padding: const EdgeInsets.all(15),
      child: is_bot_text == true
          ? Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Flexible(
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(15.0),
                        topLeft: Radius.circular(15.0),
                        bottomLeft: Radius.circular(15.0),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(13),
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(8),
                            ),
                          ),
                          child: TypeWriterText(
                            maintainSize: false,
                            text: Text(
                              content,
                              style: kChatText,
                            ),
                            duration: const Duration(milliseconds: 50),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 40,
                  height: 40,
                  margin: const EdgeInsets.only(left: 16),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: ClipOval(
                    child: Image.asset(
                      'assets/images/person-icon.png',
                      scale: 1.5,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  width: 40,
                  height: 40,
                  margin: const EdgeInsets.only(right: 10),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: ClipOval(
                    child: Image.asset(
                      'assets/images/person-icon.png',
                      scale: 1.5,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Flexible(
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Color(0xff27354B),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(15.0),
                        topLeft: Radius.circular(15.0),
                        bottomRight: Radius.circular(15.0),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(13),
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(8),
                            ),
                          ),
                          child: Text(
                            content,
                            style: kChatText,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
    );
  }
}
