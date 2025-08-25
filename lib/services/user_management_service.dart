import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

class UserManagementService {
  static const String _blockedUsersKey = 'blocked_users';
  static const String _reportedUsersKey = 'reported_users';

  // Block a user
  static Future<void> blockUser(String userId) async {
    final prefs = await SharedPreferences.getInstance();
    final blockedUsers = await getBlockedUsers();
    
    if (!blockedUsers.contains(userId)) {
      blockedUsers.add(userId);
      await prefs.setString(_blockedUsersKey, jsonEncode(blockedUsers));
      print('Blocked user: $userId'); // Debug log
    } else {
      print('User already blocked: $userId'); // Debug log
    }
  }

  // Unblock a user
  static Future<void> unblockUser(String userId) async {
    final prefs = await SharedPreferences.getInstance();
    final blockedUsers = await getBlockedUsers();
    
    if (blockedUsers.contains(userId)) {
      blockedUsers.remove(userId);
      await prefs.setString(_blockedUsersKey, jsonEncode(blockedUsers));
      print('Unblocked user: $userId'); // Debug log
    }
  }

  // Check if user is blocked
  static Future<bool> isUserBlocked(String userId) async {
    final blockedUsers = await getBlockedUsers();
    final isBlocked = blockedUsers.contains(userId);
    print('Checking if user $userId is blocked: $isBlocked'); // Debug log
    return isBlocked;
  }

  // Get all blocked user IDs
  static Future<List<String>> getBlockedUsers() async {
    final prefs = await SharedPreferences.getInstance();
    final blockedUsersString = prefs.getString(_blockedUsersKey);
    
    if (blockedUsersString != null) {
      try {
        final blockedUsers = jsonDecode(blockedUsersString) as List;
        final result = blockedUsers.cast<String>();
        print('Found blocked users: $result'); // Debug log
        return result;
      } catch (e) {
        print('Error parsing blocked users: $e'); // Debug log
        return [];
      }
    }
    
    print('No blocked users found'); // Debug log
    return [];
  }

  // Report a user
  static Future<void> reportUser(String userId, String reason) async {
    final prefs = await SharedPreferences.getInstance();
    final reportedUsers = await getReportedUsers();
    
    final reportData = {
      'user_id': userId,
      'reason': reason,
      'report_date': DateTime.now().toIso8601String(),
    };
    
    // Check if user already reported
    final existingReportIndex = reportedUsers.indexWhere((report) => report['user_id'] == userId);
    if (existingReportIndex != -1) {
      // Update existing report
      reportedUsers[existingReportIndex] = reportData;
    } else {
      // Add new report
      reportedUsers.add(reportData);
    }
    
    await prefs.setString(_reportedUsersKey, jsonEncode(reportedUsers));
    print('Reported user: $userId with reason: $reason'); // Debug log
  }

  // Check if user is reported
  static Future<bool> isUserReported(String userId) async {
    final reportedUsers = await getReportedUsers();
    final isReported = reportedUsers.any((report) => report['user_id'] == userId);
    print('Checking if user $userId is reported: $isReported'); // Debug log
    return isReported;
  }

  // Get all reported users
  static Future<List<Map<String, dynamic>>> getReportedUsers() async {
    final prefs = await SharedPreferences.getInstance();
    final reportedUsersString = prefs.getString(_reportedUsersKey);
    
    if (reportedUsersString != null) {
      try {
        final reportedUsers = jsonDecode(reportedUsersString) as List;
        final result = reportedUsers.cast<Map<String, dynamic>>();
        print('Found reported users: ${result.length}'); // Debug log
        return result;
      } catch (e) {
        print('Error parsing reported users: $e'); // Debug log
        return [];
      }
    }
    
    print('No reported users found'); // Debug log
    return [];
  }

  // Get report details for a user
  static Future<Map<String, dynamic>?> getReportDetails(String userId) async {
    final reportedUsers = await getReportedUsers();
    final report = reportedUsers.firstWhere(
      (report) => report['user_id'] == userId,
      orElse: () => <String, dynamic>{},
    );
    
    return report.isEmpty ? null : report;
  }

  // Remove report for a user
  static Future<void> removeReport(String userId) async {
    final prefs = await SharedPreferences.getInstance();
    final reportedUsers = await getReportedUsers();
    
    reportedUsers.removeWhere((report) => report['user_id'] == userId);
    await prefs.setString(_reportedUsersKey, jsonEncode(reportedUsers));
    print('Removed report for user: $userId'); // Debug log
  }

  // Get blocked users count
  static Future<int> getBlockedUsersCount() async {
    final blockedUsers = await getBlockedUsers();
    return blockedUsers.length;
  }

  // Get reported users count
  static Future<int> getReportedUsersCount() async {
    final reportedUsers = await getReportedUsers();
    return reportedUsers.length;
  }

  // Clear all blocked users
  static Future<void> clearAllBlockedUsers() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_blockedUsersKey);
    print('Cleared all blocked users'); // Debug log
  }

  // Clear all reported users
  static Future<void> clearAllReportedUsers() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_reportedUsersKey);
    print('Cleared all reported users'); // Debug log
  }
}
