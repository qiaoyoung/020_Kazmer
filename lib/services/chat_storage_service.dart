import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import '../models/user.dart';

class ChatStorageService {
  static const String _chatPrefix = 'chat_';
  static const String _chatListKey = 'chat_list';

  // Save chat messages for a specific user
  static Future<void> saveChatMessages(String userId, List<ChatMessage> messages) async {
    final prefs = await SharedPreferences.getInstance();
    final key = _chatPrefix + userId;
    final messagesJson = messages.map((msg) => msg.toJson()).toList();
    await prefs.setString(key, jsonEncode(messagesJson));
    
    print('Saved ${messages.length} messages for user: $userId'); // Debug log
    
    // Update chat list
    await _updateChatList(userId);
  }

  // Load chat messages for a specific user
  static Future<List<ChatMessage>> loadChatMessages(String userId) async {
    final prefs = await SharedPreferences.getInstance();
    final key = _chatPrefix + userId;
    final messagesString = prefs.getString(key);
    
    if (messagesString != null) {
      final messagesJson = jsonDecode(messagesString) as List;
      return messagesJson.map((json) => ChatMessage.fromJson(json)).toList();
    }
    
    return [];
  }

  // Get list of users with chat history
  static Future<List<String>> getChatUserIds() async {
    final prefs = await SharedPreferences.getInstance();
    final chatListString = prefs.getString(_chatListKey);
    
    print('Chat list string: $chatListString'); // Debug log
    
    if (chatListString != null) {
      try {
        final chatList = jsonDecode(chatListString) as List;
        final result = chatList.cast<String>();
        print('Found chat user IDs: $result'); // Debug log
        return result;
      } catch (e) {
        print('Error parsing chat list: $e'); // Debug log
        return [];
      }
    }
    
    print('No chat list found'); // Debug log
    return [];
  }

  // Update chat list when new message is added
  static Future<void> _updateChatList(String userId) async {
    final prefs = await SharedPreferences.getInstance();
    final chatList = await getChatUserIds();
    
    if (!chatList.contains(userId)) {
      chatList.add(userId);
      await prefs.setString(_chatListKey, jsonEncode(chatList));
      print('Added user $userId to chat list'); // Debug log
    } else {
      print('User $userId already in chat list'); // Debug log
    }
  }

  // Clear chat history for a specific user
  static Future<void> clearChatHistory(String userId) async {
    final prefs = await SharedPreferences.getInstance();
    final key = _chatPrefix + userId;
    await prefs.remove(key);
    
    // Remove from chat list
    final chatList = await getChatUserIds();
    chatList.remove(userId);
    await prefs.setString(_chatListKey, jsonEncode(chatList));
  }

  // Get last message for a user
  static Future<ChatMessage?> getLastMessage(String userId) async {
    final messages = await loadChatMessages(userId);
    if (messages.isNotEmpty) {
      return messages.last;
    }
    return null;
  }

  // Get unread message count for a user
  static Future<int> getUnreadCount(String userId) async {
    final prefs = await SharedPreferences.getInstance();
    final key = 'unread_$userId';
    return prefs.getInt(key) ?? 0;
  }

  // Mark messages as read
  static Future<void> markAsRead(String userId) async {
    final prefs = await SharedPreferences.getInstance();
    final key = 'unread_$userId';
    await prefs.setInt(key, 0);
  }

  // Increment unread count
  static Future<void> incrementUnreadCount(String userId) async {
    final prefs = await SharedPreferences.getInstance();
    final key = 'unread_$userId';
    final currentCount = prefs.getInt(key) ?? 0;
    await prefs.setInt(key, currentCount + 1);
  }
}

class ChatMessage {
  final String text;
  final bool isUser;
  final DateTime timestamp;

  ChatMessage({
    required this.text,
    required this.isUser,
    required this.timestamp,
  });

  Map<String, dynamic> toJson() {
    return {
      'text': text,
      'isUser': isUser,
      'timestamp': timestamp.toIso8601String(),
    };
  }

  factory ChatMessage.fromJson(Map<String, dynamic> json) {
    return ChatMessage(
      text: json['text'],
      isUser: json['isUser'],
      timestamp: DateTime.parse(json['timestamp']),
    );
  }
}
