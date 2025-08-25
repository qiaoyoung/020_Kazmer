import 'dart:io';
import 'dart:typed_data';
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ImageStorageService {
  static const String _userAvatarsKey = 'user_avatars';
  static const String _avatarsFolder = 'user_avatars';

  // 获取应用文档目录
  static Future<Directory> get _appDocDir async {
    return await getApplicationDocumentsDirectory();
  }

  // 获取头像存储目录
  static Future<Directory> get _avatarsDir async {
    final appDir = await _appDocDir;
    final avatarsDir = Directory('${appDir.path}/$_avatarsFolder');
    if (!await avatarsDir.exists()) {
      await avatarsDir.create(recursive: true);
    }
    return avatarsDir;
  }

  // 保存图片到本地并返回相对路径
  static Future<String> saveImage(Uint8List imageData, String fileName) async {
    try {
      final avatarsDir = await _avatarsDir;
      final file = File('${avatarsDir.path}/$fileName');
      await file.writeAsBytes(imageData);
      
      // 返回相对路径，不包含绝对路径
      final relativePath = '$_avatarsFolder/$fileName';
      
      // 保存到已保存的头像列表中
      await _addToSavedAvatars(relativePath);
      
      print('Image saved: $relativePath');
      return relativePath;
    } catch (e) {
      print('Error saving image: $e');
      throw Exception('Failed to save image: $e');
    }
  }

  // 从相对路径加载图片
  static Future<File?> loadImage(String relativePath) async {
    try {
      final appDir = await _appDocDir;
      final file = File('${appDir.path}/$relativePath');
      if (await file.exists()) {
        return file;
      }
      return null;
    } catch (e) {
      print('Error loading image: $relativePath - $e');
      return null;
    }
  }

  // 删除图片
  static Future<bool> deleteImage(String relativePath) async {
    try {
      final appDir = await _appDocDir;
      final file = File('${appDir.path}/$relativePath');
      if (await file.exists()) {
        await file.delete();
        await _removeFromSavedAvatars(relativePath);
        print('Image deleted: $relativePath');
        return true;
      }
      return false;
    } catch (e) {
      print('Error deleting image: $e');
      return false;
    }
  }

  // 获取所有已保存的头像路径
  static Future<List<String>> getSavedAvatars() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final avatarsJson = prefs.getStringList(_userAvatarsKey) ?? [];
      return avatarsJson;
    } catch (e) {
      print('Error getting saved avatars: $e');
      return [];
    }
  }

  // 添加头像到已保存列表
  static Future<void> _addToSavedAvatars(String relativePath) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final avatars = prefs.getStringList(_userAvatarsKey) ?? [];
      if (!avatars.contains(relativePath)) {
        avatars.add(relativePath);
        await prefs.setStringList(_userAvatarsKey, avatars);
      }
    } catch (e) {
      print('Error adding to saved avatars: $e');
    }
  }

  // 从头像列表中移除
  static Future<void> _removeFromSavedAvatars(String relativePath) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final avatars = prefs.getStringList(_userAvatarsKey) ?? [];
      avatars.remove(relativePath);
      await prefs.setStringList(_userAvatarsKey, avatars);
    } catch (e) {
      print('Error removing from saved avatars: $e');
    }
  }

  // 清理未使用的头像文件
  static Future<void> cleanupUnusedAvatars() async {
    try {
      final savedAvatars = await getSavedAvatars();
      final avatarsDir = await _avatarsDir;
      final files = avatarsDir.listSync();
      
      for (final file in files) {
        if (file is File) {
          final fileName = file.path.split('/').last;
          final relativePath = '$_avatarsFolder/$fileName';
          if (!savedAvatars.contains(relativePath)) {
            await file.delete();
            print('Cleaned up unused avatar: $relativePath');
          }
        }
      }
    } catch (e) {
      print('Error cleaning up avatars: $e');
    }
  }
}
