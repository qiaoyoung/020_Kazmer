import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import '../theme/app_theme.dart';
import '../services/user_profile_service.dart';
import '../services/image_storage_service.dart';
import 'privacy_policy_screen.dart';
import 'terms_of_service_screen.dart';
import 'about_us_screen.dart';

class MyRegistrationsScreen extends StatefulWidget {
  const MyRegistrationsScreen({super.key});

  @override
  State<MyRegistrationsScreen> createState() => _MyRegistrationsScreenState();
}

class _MyRegistrationsScreenState extends State<MyRegistrationsScreen> {
  String _userName = 'Music Lover';
  String _userAvatar = 'assets/images/kazmer_me_nor.png';
  bool _isEditing = false;
  final TextEditingController _nameController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _loadUserProfile();
  }

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }

  Future<void> _loadUserProfile() async {
    try {
      final name = await UserProfileService.getUserName();
      final avatar = await UserProfileService.getUserAvatar();
      setState(() {
        _userName = name;
        _userAvatar = avatar;
        _nameController.text = name;
      });
    } catch (e) {
      print('Error loading user profile: $e');
    }
  }

  void _startEdit() {
    setState(() {
      _isEditing = true;
      _nameController.text = _userName;
    });
  }

  void _cancelEdit() {
    setState(() {
      _isEditing = false;
      _nameController.text = _userName;
    });
  }

  Future<void> _saveProfile() async {
    final newName = _nameController.text.trim();
    if (newName.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Name cannot be empty'),
          backgroundColor: Colors.red,
        ),
      );
      return;
    }

    try {
      await UserProfileService.saveUserName(newName);
      setState(() {
        _userName = newName;
        _isEditing = false;
      });
      
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Profile saved successfully'),
            backgroundColor: Colors.green,
          ),
        );
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Failed to save profile: $e'),
            backgroundColor: Colors.red,
          ),
        );
      }
    }
  }

  void _selectAvatar() {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (context) => Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 12, bottom: 20),
              width: 40,
              height: 4,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(2),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  // Select from Gallery
                  ListTile(
                    leading: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: AppTheme.primaryColor.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Icon(
                        Icons.photo_library,
                        color: AppTheme.primaryColor,
                        size: 24,
                      ),
                    ),
                    title: const Text(
                      'Select from Gallery',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    subtitle: const Text('Choose image from your photo library'),
                    onTap: () {
                      Navigator.pop(context);
                      _pickImageFromGallery();
                    },
                  ),
                  const Divider(),
                  // Preset avatars
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 12),
                    child: Text(
                      'Preset Avatars',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: AppTheme.textSecondaryColor,
                      ),
                    ),
                  ),
                  _buildAvatarOption('assets/images/kazmer_me_nor.png', 'Default'),
                  const SizedBox(height: 8),
                  _buildAvatarOption('assets/images/kazmer_ai_assistant.png', 'AI Assistant'),
                  const SizedBox(height: 8),
                  _buildAvatarOption('assets/images/kazmer_chat_topics.png', 'Chat Topics'),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _pickImageFromGallery() async {
    try {
      final ImagePicker picker = ImagePicker();
      final XFile? image = await picker.pickImage(
        source: ImageSource.gallery,
        maxWidth: 512,
        maxHeight: 512,
        imageQuality: 85,
      );

      if (image != null) {
        final bytes = await image.readAsBytes();
        final relativePath = await UserProfileService.saveAvatarFromGallery(bytes);
        
        setState(() {
          _userAvatar = relativePath;
        });

        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Avatar updated successfully'),
              backgroundColor: Colors.green,
            ),
          );
        }
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Failed to select avatar: $e'),
            backgroundColor: Colors.red,
          ),
        );
      }
    }
  }

  Widget _buildAvatarOption(String avatarPath, String label) {
    return GestureDetector(
      onTap: () async {
        try {
          await UserProfileService.saveUserAvatar(avatarPath);
          setState(() {
            _userAvatar = avatarPath;
          });
          Navigator.pop(context);
          
          if (mounted) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Avatar updated successfully'),
                backgroundColor: Colors.green,
              ),
            );
          }
        } catch (e) {
          if (mounted) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('Failed to update avatar: $e'),
                backgroundColor: Colors.red,
              ),
            );
          }
        }
      },
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          border: Border.all(
            color: _userAvatar == avatarPath ? AppTheme.primaryColor : Colors.grey[300]!,
            width: _userAvatar == avatarPath ? 2 : 1,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            ClipOval(
              child: Image.asset(
                avatarPath,
                width: 40,
                height: 40,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    width: 40,
                    height: 40,
                    color: Colors.grey[300],
                                         child: Icon(
                       Icons.person,
                       size: 20,
                       color: Colors.grey[600],
                     ),
                  );
                },
              ),
            ),
            const SizedBox(width: 12),
            Text(
              label,
              style: TextStyle(
                fontSize: 16,
                fontWeight: _userAvatar == avatarPath ? FontWeight.bold : FontWeight.normal,
                color: _userAvatar == avatarPath ? AppTheme.primaryColor : AppTheme.textPrimaryColor,
              ),
            ),
          ],
        ),
      ),
    );
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
            height: 300,
            child: Image.asset(
              'assets/images/kazmer_me_top.png',
              fit: BoxFit.cover,
              alignment: Alignment.topCenter,
            ),
          ),
          // Content overlay
          Column(
            children: [
              // Top section with image background
              Container(
                height: 300,
                width: double.infinity,
                child: Stack(
                  children: [
                    // Background image - only top 200px
                    Positioned.fill(
                      child: Image.asset(
                        'assets/images/kazmer_me_top.png',
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
                              Colors.black.withOpacity(0.4),
                            ],
                          ),
                        ),
                      ),
                    ),
                    // User avatar and name
                    Positioned(
                      top: 60,
                      left: 20,
                      right: 20,
                      child: Row(
                        children: [
                          // User avatar
                          GestureDetector(
                            onTap: _isEditing ? _selectAvatar : null,
                            child: Container(
                              width: 80,
                              height: 80,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: Colors.white,
                                  width: 3,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.3),
                                    blurRadius: 8,
                                    offset: const Offset(0, 2),
                                  ),
                                ],
                              ),
                              child: ClipOval(
                                child: _userAvatar.startsWith('assets/')
                                    ? Image.asset(
                                        _userAvatar,
                                        fit: BoxFit.cover,
                                        errorBuilder: (context, error, stackTrace) {
                                          return Container(
                                            color: Colors.grey[300],
                                            child: Icon(
                                              Icons.person,
                                              size: 40,
                                              color: Colors.grey[600],
                                            ),
                                          );
                                        },
                                      )
                                    : FutureBuilder<File?>(
                                        future: ImageStorageService.loadImage(_userAvatar),
                                        builder: (context, snapshot) {
                                          if (snapshot.hasData && snapshot.data != null) {
                                            return Image.file(
                                              snapshot.data!,
                                              fit: BoxFit.cover,
                                              errorBuilder: (context, error, stackTrace) {
                                                return Container(
                                                  color: Colors.grey[300],
                                                  child: Icon(
                                                    Icons.person,
                                                    size: 40,
                                                    color: Colors.grey[600],
                                                  ),
                                                );
                                              },
                                            );
                                          } else {
                                            return Container(
                                              color: Colors.grey[300],
                                              child: Icon(
                                                Icons.person,
                                                size: 40,
                                                color: Colors.grey[600],
                                              ),
                                            );
                                          }
                                        },
                                      ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 16),
                          // User name and edit button
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                if (_isEditing) ...[
                                  TextField(
                                    controller: _nameController,
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    decoration: const InputDecoration(
                                      border: InputBorder.none,
                                      hintText: 'Enter your name',
                                      hintStyle: TextStyle(
                                        color: Colors.white70,
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ] else ...[
                                  Text(
                                    _userName,
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                      shadows: [
                                        Shadow(
                                          offset: Offset(0, 2),
                                          blurRadius: 4,
                                          color: Colors.black54,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                                const SizedBox(height: 4),
                                Row(
                                  children: [
                                    if (_isEditing) ...[
                                      IconButton(
                                        onPressed: _saveProfile,
                                        icon: const Icon(
                                          Icons.check,
                                          color: Colors.white,
                                          size: 20,
                                        ),
                                        style: IconButton.styleFrom(
                                          backgroundColor: Colors.green,
                                          padding: const EdgeInsets.all(8),
                                        ),
                                      ),
                                      const SizedBox(width: 8),
                                      IconButton(
                                        onPressed: _cancelEdit,
                                        icon: const Icon(
                                          Icons.close,
                                          color: Colors.white,
                                          size: 20,
                                        ),
                                        style: IconButton.styleFrom(
                                          backgroundColor: Colors.red,
                                          padding: const EdgeInsets.all(8),
                                        ),
                                      ),
                                    ] else ...[
                                      IconButton(
                                        onPressed: _startEdit,
                                        icon: const Icon(
                                          Icons.edit,
                                          color: Colors.white,
                                          size: 20,
                                        ),
                                        style: IconButton.styleFrom(
                                          backgroundColor: Colors.black54,
                                          padding: const EdgeInsets.all(8),
                                        ),
                                      ),
                                    ],
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    // Title and subtitle
                    Positioned(
                      bottom: 20,
                      left: 20,
                      right: 20,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'My Profile',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              shadows: [
                                Shadow(
                                  offset: Offset(0, 2),
                                  blurRadius: 4,
                                  color: Colors.black54,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            'Manage your account and preferences',
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 16,
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
                  ],
                ),
              ),
              // Content area
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: _buildEmptyState(),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildEmptyState() {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        decoration: BoxDecoration(
          color: AppTheme.surfaceColor,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.08),
              blurRadius: 10,
              offset: const Offset(0, 2),
            ),
          ],
        ),
                    child: Column(
              children: [
                _buildListTile(
                  icon: Icons.privacy_tip_outlined,
                  title: 'Privacy Policy',
                  subtitle: 'Read our privacy policy',
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const PrivacyPolicyScreen(),
                      ),
                    );
                  },
                ),
                const Divider(height: 1, indent: 56, endIndent: 16),
                _buildListTile(
                  icon: Icons.description_outlined,
                  title: 'Terms of Service',
                  subtitle: 'Read our terms of service',
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const TermsOfServiceScreen(),
                      ),
                    );
                  },
                ),
                const Divider(height: 1, indent: 56, endIndent: 16),
                _buildListTile(
                  icon: Icons.info_outline,
                  title: 'About Us',
                  subtitle: 'Learn more about Kazmer',
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const AboutUsScreen(),
                      ),
                    );
                  },
                ),
              ],
            ),
      ),
    );
  }

  Widget _buildListTile({
    required IconData icon,
    required String title,
    required String subtitle,
    required VoidCallback onTap,
  }) {
    return ListTile(
      leading: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          color: AppTheme.primaryColor.withOpacity(0.1),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Icon(
          icon,
          color: AppTheme.primaryColor,
          size: 20,
        ),
      ),
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: AppTheme.textPrimaryColor,
        ),
      ),
      subtitle: Text(
        subtitle,
        style: TextStyle(
          fontSize: 14,
          color: AppTheme.textLightColor,
        ),
      ),
      trailing: const Icon(
        Icons.arrow_forward_ios,
        color: AppTheme.textLightColor,
        size: 16,
      ),
      onTap: onTap,
    );
  }




}
