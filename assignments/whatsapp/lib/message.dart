import 'package:flutter/material.dart';
import 'package:bubble/bubble.dart';
import 'package:flutter/scheduler.dart';

class MessagePage extends StatefulWidget {
  const MessagePage({required Key key}) : super(key: key);

  @override
  _MessagePage createState() => _MessagePage();
}

class _MessagePage extends State<MessagePage> {
  static const styleSender = BubbleStyle(
    margin: BubbleEdges.only(top: 10),
    alignment: Alignment.topLeft,
    nip: BubbleNip.leftTop,
    color: Color.fromRGBO(255, 255, 255, 1),
    showNip: false,
  );
  static const styleReceiver = BubbleStyle(
    margin: BubbleEdges.only(top: 10),
    alignment: Alignment.topRight,
    nip: BubbleNip.rightTop,
    color: Color.fromRGBO(225, 255, 199, 1.0),
    showNip: false,
  );
  ScrollController _myController = ScrollController();
  @override
  Widget build(BuildContext context) {
    SchedulerBinding.instance.addPostFrameCallback((_) {
      _myController.jumpTo(_myController.position.maxScrollExtent);
    });
    return ListView(children: [
      Bubble(
        alignment: Alignment.center,
        // stick: true,
        color: const Color.fromRGBO(212, 234, 244, 1.0),
        child: const Text('TOMORROW',
            textAlign: TextAlign.center, style: TextStyle(fontSize: 11.0)),
      ),
      Bubble(
        showNip: true,
        style: styleReceiver,
        child: const Text('Hello', textAlign: TextAlign.right),
      ),
      Bubble(
        showNip: true,
        style: styleSender,
        child: const Text('Hey'),
      ),
      Bubble(
        showNip: true,
        style: styleSender,
        child: const Text('Whats up?'),
      ),
      Bubble(
        margin: const BubbleEdges.only(top: 10),
        stick: true,
        nip: BubbleNip.no,
        alignment: Alignment.center,
        color: const Color.fromRGBO(212, 234, 244, 1.0),
        child: const Text('TODAY',
            textAlign: TextAlign.center, style: TextStyle(fontSize: 11.0)),
      ),
      Bubble(
        showNip: true,
        style: styleReceiver,
        child: const Text('Hello', textAlign: TextAlign.right),
      ),
      Bubble(
        style: styleReceiver,
        child: const Text('How are you?', textAlign: TextAlign.right),
      ),
      Bubble(
        showNip: true,
        style: styleSender,
        child: const Text('Hi, developer!'),
      ),
      Bubble(
        showNip: true,
        style: styleSender,
        child: const Text('Nice!'),
      ),
      Bubble(
        showNip: true,
        style: styleReceiver,
        child: const Text('Hello', textAlign: TextAlign.right),
      ),
      Bubble(
        style: styleReceiver,
        child: const Text('How are you?', textAlign: TextAlign.right),
      ),
      Bubble(
        showNip: true,
        style: styleSender,
        child: const Text('Hi, developer!'),
      ),
      Bubble(
        showNip: true,
        style: styleSender,
        child: const Text('Nice!'),
      ),
      Bubble(
        showNip: true,
        style: styleReceiver,
        child: const Text('Hello', textAlign: TextAlign.right),
      ),
      Bubble(
        style: styleReceiver,
        child: const Text('How are you?', textAlign: TextAlign.right),
      ),
      Bubble(
        showNip: true,
        style: styleSender,
        child: const Text('Hi, developer!'),
      ),
      Bubble(
        showNip: true,
        style: styleSender,
        child: const Text('Nice!'),
      ),
      Bubble(
        showNip: true,
        style: styleReceiver,
        child: const Text('Hello', textAlign: TextAlign.right),
      ),
      Bubble(
        style: styleReceiver,
        child: const Text('How are you?', textAlign: TextAlign.right),
      ),
      Bubble(
        showNip: true,
        style: styleSender,
        child: const Text('Hi, developer!'),
      ),
      Bubble(
        showNip: true,
        style: styleSender,
        child: const Text('Nice!'),
      ),
    ]);
  }
}
