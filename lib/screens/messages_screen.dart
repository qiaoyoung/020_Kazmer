import 'package:flutter/material.dart';
import 'dart:convert';
import '../theme/app_theme.dart';
import '../models/user.dart';
import '../services/chat_storage_service.dart';
import '../services/user_management_service.dart';
import 'chat_detail_screen.dart';

class MessagesScreen extends StatefulWidget {
  const MessagesScreen({super.key});

  @override
  State<MessagesScreen> createState() => _MessagesScreenState();
}

class _MessagesScreenState extends State<MessagesScreen> {
  List<ChatUser> _chatUsers = [];
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _loadChatUsers();
  }

  Future<void> _loadChatUsers() async {
    setState(() {
      _isLoading = true;
    });

    try {
      final chatUserIds = await ChatStorageService.getChatUserIds();
      print('Found chat user IDs: $chatUserIds'); // Debug log
      final chatUsers = <ChatUser>[];

      for (final userId in chatUserIds) {
        final user = await _loadUserFromJson(userId);
        if (user != null) {
          // Check if user is blocked
          final isBlocked = await UserManagementService.isUserBlocked(userId);
          if (isBlocked) {
            print('Skipping blocked user: ${user.profile.displayName}'); // Debug log
            continue;
          }
          
          final lastMessage = await ChatStorageService.getLastMessage(userId);
          final unreadCount = await ChatStorageService.getUnreadCount(userId);
          
          chatUsers.add(ChatUser(
            user: user,
            lastMessage: lastMessage,
            unreadCount: unreadCount,
          ));
          print('Added chat user: ${user.profile.displayName}'); // Debug log
        } else {
          print('Could not load user data for ID: $userId'); // Debug log
        }
      }

      // Sort by last message timestamp (most recent first)
      chatUsers.sort((a, b) {
        if (a.lastMessage == null && b.lastMessage == null) return 0;
        if (a.lastMessage == null) return 1;
        if (b.lastMessage == null) return -1;
        return b.lastMessage!.timestamp.compareTo(a.lastMessage!.timestamp);
      });

      setState(() {
        _chatUsers = chatUsers;
        _isLoading = false;
      });
      print('Loaded ${chatUsers.length} chat users'); // Debug log
    } catch (e) {
      print('Error in _loadChatUsers: $e'); // Debug log
      setState(() {
        _isLoading = false;
      });
    }
  }

  Future<User?> _loadUserFromJson(String userId) async {
    try {
      final jsonString = await DefaultAssetBundle.of(context).loadString('assets/user/music_festival_users.json');
      final jsonData = jsonDecode(jsonString) as Map<String, dynamic>;
      final usersList = jsonData['users'] as List;
      
      for (final userData in usersList) {
        if (userData['user_id'] == userId) {
          return User.fromJson(userData);
        }
      }
    } catch (e) {
      print('Error loading user data: $e');
    }
    return null;
  }

  String _formatTimestamp(DateTime timestamp) {
    final now = DateTime.now();
    final difference = now.difference(timestamp);

    if (difference.inDays > 0) {
      return '${difference.inDays}d ago';
    } else if (difference.inHours > 0) {
      return '${difference.inHours}h ago';
    } else if (difference.inMinutes > 0) {
      return '${difference.inMinutes}m ago';
    } else {
      return 'Just now';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.backgroundColor,
      body: Stack(
        children: [
          // Background image from battery bar - only top 200px
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            height: 200,
            child: Image.asset(
              'assets/images/kazmer_chat_topics.png',
              fit: BoxFit.cover,
              alignment: Alignment.topCenter,
            ),
          ),
          // Content overlay
          Column(
            children: [
              // Top section with image background
              Container(
                height: 200,
                width: double.infinity,
                child: Stack(
                  children: [
                                         // Background image - only top 200px
                     Positioned.fill(
                       child: Image.asset(
                         'assets/images/kazmer_chat_topics.png',
                         fit: BoxFit.cover,
                         alignment: Alignment.topCenter,
                       ),
                     ),
                    // Gradient overlay for better text visibility
                    Positioned.fill(
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.transparent,
                              Colors.black.withOpacity(0.3),
                            ],
                          ),
                        ),
                      ),
                    ),
                    // Clear all button
                    if (_chatUsers.isNotEmpty)
                      Positioned(
                        top: 50,
                        right: 16,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: IconButton(
                            icon: const Icon(
                              Icons.clear_all,
                              color: Colors.white,
                            ),
                            onPressed: _showClearAllDialog,
                          ),
                        ),
                      ),
                  ],
                ),
              ),
              // Messages content
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: _isLoading
                      ? const Center(
                          child: CircularProgressIndicator(
                            color: AppTheme.primaryColor,
                          ),
                        )
                      : _chatUsers.isEmpty
                          ? _buildEmptyState()
                          : _buildChatList(),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildEmptyState() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: AppTheme.primaryColor.withOpacity(0.1),
              borderRadius: BorderRadius.circular(50),
            ),
            child: Icon(
              Icons.chat_bubble_outline,
              size: 60,
              color: AppTheme.primaryColor,
            ),
          ),
          const SizedBox(height: 24),
          Text(
            'No Messages Yet',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w600,
              color: AppTheme.textPrimaryColor,
            ),
          ),
          const SizedBox(height: 12),
          Text(
            'Start chatting with AI characters\nto see your conversations here',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              color: AppTheme.textLightColor,
              height: 1.4,
            ),
          ),
          const SizedBox(height: 32),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            decoration: BoxDecoration(
              color: AppTheme.primaryColor,
              borderRadius: BorderRadius.circular(25),
            ),
            child: Text(
              'Explore AI Characters',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildChatList() {
    return RefreshIndicator(
      onRefresh: _loadChatUsers,
      child: ListView.builder(
        padding: const EdgeInsets.fromLTRB(16, 20, 16, 16),
        itemCount: _chatUsers.length,
        itemBuilder: (context, index) {
          final chatUser = _chatUsers[index];
          return _buildChatItem(chatUser);
        },
      ),
    );
  }

  Widget _buildChatItem(ChatUser chatUser) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            blurRadius: 15,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.all(16),
        leading: Stack(
          children: [
            CircleAvatar(
              radius: 28,
              backgroundImage: AssetImage(chatUser.user.profile.avatar),
            ),
            if (chatUser.unreadCount > 0)
              Positioned(
                right: 0,
                top: 0,
                child: Container(
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  constraints: const BoxConstraints(
                    minWidth: 20,
                    minHeight: 20,
                  ),
                  child: Text(
                    chatUser.unreadCount > 99 ? '99+' : chatUser.unreadCount.toString(),
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
          ],
        ),
        title: Row(
          children: [
            Expanded(
              child: Text(
                chatUser.user.profile.displayName,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: AppTheme.textPrimaryColor,
                ),
              ),
            ),
            if (chatUser.lastMessage != null)
              Text(
                _formatTimestamp(chatUser.lastMessage!.timestamp),
                style: TextStyle(
                  fontSize: 12,
                  color: AppTheme.textLightColor,
                ),
              ),
          ],
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 4),
            if (chatUser.lastMessage != null)
              Text(
                chatUser.lastMessage!.text,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 14,
                  color: chatUser.unreadCount > 0 
                      ? AppTheme.textPrimaryColor 
                      : AppTheme.textLightColor,
                  fontWeight: chatUser.unreadCount > 0 ? FontWeight.w500 : FontWeight.normal,
                ),
              )
            else
              Text(
                'No messages yet',
                style: TextStyle(
                  fontSize: 14,
                  color: AppTheme.textLightColor,
                  fontStyle: FontStyle.italic,
                ),
              ),
            const SizedBox(height: 8),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: AppTheme.primaryColor.withOpacity(0.1),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                'AI Virtual Character',
                style: TextStyle(
                  fontSize: 10,
                  color: AppTheme.primaryColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
        onTap: () async {
          await ChatStorageService.markAsRead(chatUser.user.userId);
          if (mounted) {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => ChatDetailScreen(user: chatUser.user),
              ),
            ).then((_) {
              _loadChatUsers(); // Refresh list when returning from chat
            });
          }
        },
        onLongPress: () => _showChatOptions(chatUser),
      ),
    );
  }

  void _showChatOptions(ChatUser chatUser) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (context) => Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 8),
              width: 40,
              height: 4,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(2),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.delete_outline, color: Colors.red),
              title: const Text('Clear Chat History'),
              onTap: () {
                Navigator.pop(context);
                _clearChatHistory(chatUser.user.userId);
              },
            ),
            ListTile(
              leading: const Icon(Icons.person_outline),
              title: const Text('View Profile'),
              onTap: () {
                Navigator.pop(context);
                // Navigate to user profile
              },
            ),
          ],
        ),
      ),
    );
  }

  void _showClearAllDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Clear All Chats'),
        content: const Text('Are you sure you want to clear all chat histories? This action cannot be undone.'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              _clearAllChats();
            },
            style: TextButton.styleFrom(foregroundColor: Colors.red),
            child: const Text('Clear All'),
          ),
        ],
      ),
    );
  }

  Future<void> _clearChatHistory(String userId) async {
    await ChatStorageService.clearChatHistory(userId);
    _loadChatUsers();
  }

  Future<void> _clearAllChats() async {
    for (final chatUser in _chatUsers) {
      await ChatStorageService.clearChatHistory(chatUser.user.userId);
    }
    _loadChatUsers();
  }
}

class ChatUser {
  final User user;
  final ChatMessage? lastMessage;
  final int unreadCount;

  ChatUser({
    required this.user,
    this.lastMessage,
    required this.unreadCount,
  });
}
