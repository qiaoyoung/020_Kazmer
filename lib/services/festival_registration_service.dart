import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

class FestivalRegistrationService {
  static const String _registrationKey = 'festival_registrations';

  // Register for a festival
  static Future<void> register(String festivalId) async {
    final prefs = await SharedPreferences.getInstance();
    final registrations = await getRegistrations();
    
    if (!registrations.contains(festivalId)) {
      registrations.add(festivalId);
      await prefs.setString(_registrationKey, jsonEncode(registrations));
      print('Registered for festival: $festivalId'); // Debug log
    } else {
      print('Already registered for festival: $festivalId'); // Debug log
    }
  }

  // Unregister from a festival
  static Future<void> unregister(String festivalId) async {
    final prefs = await SharedPreferences.getInstance();
    final registrations = await getRegistrations();
    
    if (registrations.contains(festivalId)) {
      registrations.remove(festivalId);
      await prefs.setString(_registrationKey, jsonEncode(registrations));
      print('Unregistered from festival: $festivalId'); // Debug log
    }
  }

  // Check if user is registered for a festival
  static Future<bool> isRegistered(String festivalId) async {
    final registrations = await getRegistrations();
    final isRegistered = registrations.contains(festivalId);
    print('Checking registration for $festivalId: $isRegistered'); // Debug log
    return isRegistered;
  }

  // Get all registered festival IDs
  static Future<List<String>> getRegistrations() async {
    final prefs = await SharedPreferences.getInstance();
    final registrationsString = prefs.getString(_registrationKey);
    
    if (registrationsString != null) {
      try {
        final registrations = jsonDecode(registrationsString) as List;
        final result = registrations.cast<String>();
        print('Found registrations: $result'); // Debug log
        return result;
      } catch (e) {
        print('Error parsing registrations: $e'); // Debug log
        return [];
      }
    }
    
    print('No registrations found'); // Debug log
    return [];
  }

  // Get registration count
  static Future<int> getRegistrationCount() async {
    final registrations = await getRegistrations();
    return registrations.length;
  }

  // Clear all registrations
  static Future<void> clearAllRegistrations() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_registrationKey);
    print('Cleared all registrations'); // Debug log
  }

  // Get registration details with timestamp
  static Future<Map<String, dynamic>> getRegistrationDetails(String festivalId) async {
    final prefs = await SharedPreferences.getInstance();
    final detailsKey = 'festival_registration_details_$festivalId';
    final detailsString = prefs.getString(detailsKey);
    
    if (detailsString != null) {
      try {
        final details = jsonDecode(detailsString) as Map<String, dynamic>;
        return details;
      } catch (e) {
        print('Error parsing registration details: $e'); // Debug log
      }
    }
    
    return {};
  }

  // Save registration details with timestamp
  static Future<void> saveRegistrationDetails(String festivalId, Map<String, dynamic> details) async {
    final prefs = await SharedPreferences.getInstance();
    final detailsKey = 'festival_registration_details_$festivalId';
    
    details['registration_date'] = DateTime.now().toIso8601String();
    details['festival_id'] = festivalId;
    
    await prefs.setString(detailsKey, jsonEncode(details));
    print('Saved registration details for $festivalId'); // Debug log
  }
}
