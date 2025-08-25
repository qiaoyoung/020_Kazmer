import 'package:flutter/material.dart';
import 'dart:convert';
import '../theme/app_theme.dart';
import '../models/user.dart';
import '../services/user_management_service.dart';
import '../widgets/user_card.dart';
import '../widgets/custom_waterfall_flow.dart';
import 'user_detail_screen.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  List<User> users = [];

  @override
  void initState() {
    super.initState();
    _loadUsers();
  }

  void _loadUsers() async {
    // Load users from JSON file
    try {
      final jsonString = await DefaultAssetBundle.of(context).loadString('assets/user/music_festival_users.json');
      final jsonData = json.decode(jsonString);
      final usersList = jsonData['users'] as List;
      final allUsers = usersList.map((userJson) => User.fromJson(userJson)).toList();
      
      // Filter out blocked users
      final blockedUsers = await UserManagementService.getBlockedUsers();
      final filteredUsers = allUsers.where((user) => !blockedUsers.contains(user.userId)).toList();
      
      setState(() {
        users = filteredUsers;
      });
    } catch (error) {
      print('Error loading users: $error');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.backgroundColor,
      body: Column(
        children: [
                          // Top Image - Fixed height 300, showing top part of image
                Container(
                  width: double.infinity,
                  height: 300,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/kazmer_ai_assistant.png'),
                      fit: BoxFit.cover,
                      alignment: Alignment.topCenter,
                    ),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.transparent,
                          Colors.black.withOpacity(0.6),
                        ],
                      ),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'AI Generated Virtual Characters',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              shadows: [
                                Shadow(
                                  offset: Offset(0, 1),
                                  blurRadius: 3,
                                  color: Colors.black54,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            'These are AI-generated virtual characters, not real users',
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 14,
                              shadows: [
                                Shadow(
                                  offset: Offset(0, 1),
                                  blurRadius: 2,
                                  color: Colors.black54,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
          // Waterfall layout for users
          Expanded(
            child: users.isEmpty
                ? const Center(
                    child: CircularProgressIndicator(
                      color: AppTheme.primaryColor,
                    ),
                  )
                                  : Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: CustomWaterfallFlow(
                      users: users,
                      onUserTap: (user) {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => UserDetailScreen(user: user),
                          ),
                        );
                      },
                    ),
                  ),
          ),
        ],
      ),
    );
  }
}
