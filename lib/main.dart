import 'package:flutter/material.dart';
import 'theme/app_theme.dart';
import 'screens/login_screen.dart';
import 'screens/placeholder_screen.dart';
import 'screens/first_screen.dart';
import 'screens/festivals_screen.dart';
import 'screens/messages_screen.dart';
import 'screens/my_registrations_screen.dart';
import 'screens/terms_of_service_screen.dart';
import 'screens/privacy_policy_screen.dart';
import 'widgets/custom_tab_bar.dart';

void main() {
  runApp(const KazmerApp());
}

class KazmerApp extends StatelessWidget {
  const KazmerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kazmer',
      theme: AppTheme.lightTheme,
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginScreen(),
        '/main': (context) => const MainScreen(),
        '/terms': (context) => const TermsOfServiceScreen(),
        '/privacy': (context) => const PrivacyPolicyScreen(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    const FirstScreen(),
    const FestivalsScreen(),
    const MessagesScreen(),
    const MyRegistrationsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: _screens,
      ),
      bottomNavigationBar: CustomTabBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
