import 'package:flutter/material.dart';
import 'dart:convert';
import 'dart:async';
import 'package:http/http.dart' as http;
import '../theme/app_theme.dart';
import '../models/user.dart';
import '../services/chat_storage_service.dart';

class ChatDetailScreen extends StatefulWidget {
  final User user;

  const ChatDetailScreen({
    super.key,
    required this.user,
  });

  @override
  State<ChatDetailScreen> createState() => _ChatDetailScreenState();
}

class _ChatDetailScreenState extends State<ChatDetailScreen> {
  final TextEditingController _messageController = TextEditingController();
  final ScrollController _scrollController = ScrollController();
  final List<ChatMessage> _messages = [];
  bool _isLoading = false;
  bool _isFirstTime = true;

  // Zhipu AI API configuration
  static const String apiKey = '9ddd7f7e1994457f8fbfdf66c99c747f.D6DSEuqZgNN3Mqim';
  static const String apiUrl = 'https://open.bigmodel.cn/api/paas/v4/chat/completions';

  @override
  void initState() {
    super.initState();
    _loadExistingMessages();
  }

  Future<void> _loadExistingMessages() async {
    final existingMessages = await ChatStorageService.loadChatMessages(widget.user.userId);
    setState(() {
      _messages.clear();
      _messages.addAll(existingMessages);
    });
    
    if (_messages.isEmpty) {
      _sendWelcomeMessage();
    }
  }

  void _sendWelcomeMessage() {
    if (_isFirstTime) {
      _isFirstTime = false;
      _addMessage(
        ChatMessage(
          text: _generateWelcomeMessage(),
          isUser: false,
          timestamp: DateTime.now(),
        ),
      );
    }
  }

  String _generateWelcomeMessage() {
    final user = widget.user;
    final name = user.profile.displayName;
    final location = user.profile.location;
    final musicGenres = user.musicPreferences.favoriteGenres.join(', ');
    final festivalStyle = user.festivalStyle.outfitPreference;
    
    return '''Hi $name! 👋 

I'm excited to chat with you! I can see you're from $location and love $musicGenres music. Your festival style with $festivalStyle sounds amazing!

I'm here to chat about music festivals, share experiences, or just have a fun conversation. What would you like to talk about today? 🎵✨''';
  }

  void _addMessage(ChatMessage message) {
    setState(() {
      _messages.add(message);
    });
    _scrollToBottom();
    _saveMessages();
  }

  Future<void> _saveMessages() async {
    await ChatStorageService.saveChatMessages(widget.user.userId, _messages);
  }

  void _scrollToBottom() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_scrollController.hasClients) {
        _scrollController.animateTo(
          _scrollController.position.maxScrollExtent,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOut,
        );
      }
    });
  }

  Future<void> _sendMessage() async {
    final text = _messageController.text.trim();
    if (text.isEmpty) return;

    // Add user message
    _addMessage(
      ChatMessage(
        text: text,
        isUser: true,
        timestamp: DateTime.now(),
      ),
    );

    _messageController.clear();
    setState(() {
      _isLoading = true;
    });

    try {
      final response = await _getAIResponse(text);
      _addMessage(
        ChatMessage(
          text: response,
          isUser: false,
          timestamp: DateTime.now(),
        ),
      );
      // Increment unread count for AI response
      await ChatStorageService.incrementUnreadCount(widget.user.userId);
    } catch (e) {
      _addMessage(
        ChatMessage(
          text: 'Sorry, I encountered an error. Please try again later.',
          isUser: false,
          timestamp: DateTime.now(),
        ),
      );
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  Future<String> _getAIResponse(String userMessage) async {
    final user = widget.user;
    
    // Create context about the user
    final userContext = '''
You are chatting with ${user.profile.displayName}, a ${user.profile.age}-year-old from ${user.profile.location} who works as ${user.profile.occupation}.

User's music preferences: ${user.musicPreferences.favoriteGenres.join(', ')}
Favorite artists: ${user.musicPreferences.favoriteArtists.join(', ')}
Festival style: ${user.festivalStyle.outfitPreference}, ${user.festivalStyle.danceStyle}
Personality: ${user.personalCharacteristics.personalityTraits.join(', ')}
Interests: ${user.personalCharacteristics.interests.join(', ')}

This is an AI-generated virtual character for entertainment purposes. Respond in English, be friendly and engaging, and relate to their music festival interests and personality traits.
''';

    final requestBody = {
      'model': 'glm-4-flash',
      'messages': [
        {
          'role': 'system',
          'content': userContext,
        },
        {
          'role': 'user',
          'content': userMessage,
        },
      ],
      'stream': false,
    };

    final response = await http.post(
      Uri.parse(apiUrl),
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $apiKey',
      },
      body: jsonEncode(requestBody),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return data['choices'][0]['message']['content'];
    } else {
      throw Exception('Failed to get AI response: ${response.statusCode}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppTheme.primaryColor,
        foregroundColor: Colors.white,
        title: Row(
          children: [
            CircleAvatar(
              radius: 16,
              backgroundImage: AssetImage(widget.user.profile.avatar),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.user.profile.displayName,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    'AI Virtual Character',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.white.withOpacity(0.8),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          // Messages
          Expanded(
            child: ListView.builder(
              controller: _scrollController,
              padding: const EdgeInsets.all(16),
              itemCount: _messages.length + (_isLoading ? 1 : 0),
              itemBuilder: (context, index) {
                if (index == _messages.length && _isLoading) {
                  return _buildTypingIndicator();
                }
                return _buildMessage(_messages[index]);
              },
            ),
          ),
          
          // Input area
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.05),
                  blurRadius: 10,
                  offset: const Offset(0, -2),
                ),
              ],
            ),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: AppTheme.backgroundColor,
                      borderRadius: BorderRadius.circular(24),
                      border: Border.all(
                        color: AppTheme.primaryColor.withOpacity(0.2),
                      ),
                    ),
                    child: TextField(
                      controller: _messageController,
                      decoration: const InputDecoration(
                        hintText: 'Type a message...',
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 12,
                        ),
                      ),
                      maxLines: null,
                      textInputAction: TextInputAction.send,
                      onSubmitted: (_) => _sendMessage(),
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                GestureDetector(
                  onTap: _sendMessage,
                  child: Container(
                    width: 48,
                    height: 48,
                    decoration: BoxDecoration(
                      color: AppTheme.primaryColor,
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: const Icon(
                      Icons.send,
                      color: Colors.white,
                      size: 20,
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

  Widget _buildMessage(ChatMessage message) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      child: Row(
        mainAxisAlignment: message.isUser 
            ? MainAxisAlignment.end 
            : MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (!message.isUser) ...[
            CircleAvatar(
              radius: 16,
              backgroundImage: AssetImage(widget.user.profile.avatar),
            ),
            const SizedBox(width: 8),
          ],
          Flexible(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              decoration: BoxDecoration(
                color: message.isUser 
                    ? AppTheme.primaryColor 
                    : Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    blurRadius: 5,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Text(
                message.text,
                style: TextStyle(
                  color: message.isUser ? Colors.white : AppTheme.textPrimaryColor,
                  fontSize: 16,
                ),
              ),
            ),
          ),
          if (message.isUser) ...[
            const SizedBox(width: 8),
            CircleAvatar(
              radius: 16,
              backgroundColor: AppTheme.primaryColor.withOpacity(0.2),
              child: const Icon(
                Icons.person,
                color: AppTheme.primaryColor,
                size: 20,
              ),
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildTypingIndicator() {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      child: Row(
        children: [
          CircleAvatar(
            radius: 16,
            backgroundImage: AssetImage(widget.user.profile.avatar),
          ),
          const SizedBox(width: 8),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.05),
                  blurRadius: 5,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                _buildDot(0),
                _buildDot(1),
                _buildDot(2),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDot(int index) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 600 + (index * 200)),
      margin: const EdgeInsets.symmetric(horizontal: 2),
      width: 8,
      height: 8,
      decoration: BoxDecoration(
        color: AppTheme.primaryColor,
        borderRadius: BorderRadius.circular(4),
      ),
      child: TweenAnimationBuilder<double>(
        tween: Tween(begin: 0.0, end: 1.0),
        duration: Duration(milliseconds: 600 + (index * 200)),
        builder: (context, value, child) {
          return Opacity(
            opacity: value,
            child: child,
          );
        },
        child: null,
      ),
    );
  }

  @override
  void dispose() {
    _messageController.dispose();
    _scrollController.dispose();
    super.dispose();
  }
}


