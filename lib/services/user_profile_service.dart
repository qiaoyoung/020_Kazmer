import 'dart:typed_data';
import 'package:shared_preferences/shared_preferences.dart';
import 'image_storage_service.dart';

class UserProfileService {
  static const String _userNameKey = 'user_name';
  static const String _userAvatarKey = 'user_avatar';
  static const String _defaultUserName = 'Music Lover';
  static const String _defaultAvatar = 'assets/images/kazmer_me_nor.png';

  // 保存用户名称
  static Future<void> saveUserName(String name) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_userNameKey, name);
    print('Saved user name: $name');
  }

  // 获取用户名称
  static Future<String> getUserName() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(_userNameKey) ?? _defaultUserName;
  }

  // 保存用户头像（存储为相对路径）
  static Future<void> saveUserAvatar(String avatarPath) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_userAvatarKey, avatarPath);
    print('Saved user avatar: $avatarPath');
  }

  // 保存从相册选择的头像
  static Future<String> saveAvatarFromGallery(Uint8List imageData) async {
    try {
      final timestamp = DateTime.now().millisecondsSinceEpoch;
      final fileName = 'avatar_$timestamp.jpg';
      final relativePath = await ImageStorageService.saveImage(imageData, fileName);
      await saveUserAvatar(relativePath);
      return relativePath;
    } catch (e) {
      print('Error saving avatar from gallery: $e');
      throw Exception('Failed to save avatar from gallery: $e');
    }
  }

  // 获取用户头像
  static Future<String> getUserAvatar() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(_userAvatarKey) ?? _defaultAvatar;
  }

  // 清除用户资料
  static Future<void> clearUserProfile() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_userNameKey);
    await prefs.remove(_userAvatarKey);
    print('Cleared user profile');
  }
}
