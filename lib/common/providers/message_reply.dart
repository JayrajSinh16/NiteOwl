import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:niteowl/common/enum/message_enums.dart';

class MessageReply {
  final String message;
  final bool isMe;
  final MessageEnum messageEnum;

  MessageReply(this.message, this.isMe, this.messageEnum);
}

final messageReplyProvider = StateProvider<MessageReply?>((ref) => null);