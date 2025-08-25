import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.backgroundColor,
      appBar: AppBar(
        title: const Text(
          'Privacy Policy',
          style: TextStyle(
            color: AppTheme.textPrimaryColor,
            fontWeight: FontWeight.w600,
          ),
        ),
        backgroundColor: AppTheme.surfaceColor,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: AppTheme.textPrimaryColor),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: AppTheme.surfaceColor,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 8,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Privacy Policy',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: AppTheme.primaryColor,
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Last updated: December 2025',
                    style: TextStyle(
                      fontSize: 14,
                      color: AppTheme.textSecondaryColor,
                    ),
                  ),
                  const SizedBox(height: 24),
                  _buildSection(
                    '1. Information We Collect',
                    'We collect information you provide directly to us, such as when you create an account, post content, or communicate with us. This may include:\n\n'
                    '• Personal information (name, email address, profile picture)\n'
                    '• Content you post (photos, videos, text posts)\n'
                    '• Festival preferences and interests\n'
                    '• Communication with other users\n'
                    '• Device information and usage data',
                  ),
                  _buildSection(
                    '2. How We Use Your Information',
                    'We use the information we collect to:\n\n'
                    '• Provide, maintain, and improve our services\n'
                    '• Personalize your experience\n'
                    '• Connect you with other users and festivals\n'
                    '• Send you notifications and updates\n'
                    '• Ensure platform security and prevent abuse\n'
                    '• Comply with legal obligations',
                  ),
                  _buildSection(
                    '3. Information Sharing',
                    'We do not sell, trade, or otherwise transfer your personal information to third parties, except in the following circumstances:\n\n'
                    '• With your explicit consent\n'
                    '• To comply with legal requirements\n'
                    '• To protect our rights and safety\n'
                    '• With service providers who assist in operating our platform\n'
                    '• In connection with a business transfer or merger',
                  ),
                  _buildSection(
                    '4. Data Security',
                    'We implement appropriate security measures to protect your personal information against unauthorized access, alteration, disclosure, or destruction. However, no method of transmission over the internet is 100% secure.',
                  ),
                  _buildSection(
                    '5. Data Retention',
                    'We retain your personal information for as long as necessary to provide our services and comply with legal obligations. You may request deletion of your account and associated data at any time.',
                  ),
                  _buildSection(
                    '6. Your Rights',
                    'You have the right to:\n\n'
                    '• Access your personal information\n'
                    '• Correct inaccurate information\n'
                    '• Delete your account and data\n'
                    '• Opt out of certain communications\n'
                    '• Control your privacy settings\n'
                    '• Export your data',
                  ),
                  _buildSection(
                    '7. Cookies and Tracking',
                    'We use cookies and similar technologies to enhance your experience, analyze usage patterns, and provide personalized content. You can control cookie settings through your browser preferences.',
                  ),
                  _buildSection(
                    '8. Third-Party Services',
                    'Our app may contain links to third-party websites or integrate with third-party services. We are not responsible for the privacy practices of these external services.',
                  ),
                  _buildSection(
                    '9. Children\'s Privacy',
                    'Kazmer is not intended for children under 13 years of age. We do not knowingly collect personal information from children under 13. If you believe we have collected such information, please contact us immediately.',
                  ),
                  _buildSection(
                    '10. International Transfers',
                    'Your information may be transferred to and processed in countries other than your own. We ensure appropriate safeguards are in place to protect your data during such transfers.',
                  ),
                  _buildSection(
                    '11. Changes to This Policy',
                    'We may update this Privacy Policy from time to time. We will notify you of any material changes by posting the new policy on our platform and updating the "Last updated" date.',
                  ),
                  _buildSection(
                    '12. Contact Us',
                    'If you have any questions about this Privacy Policy or our data practices, please contact us at:\n\n'
                    'Email: privacy@kazmer.com\n'
                    'Phone: +743 (1363) 532-4647',
                  ),
                  const SizedBox(height: 24),
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: AppTheme.primaryColor.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: AppTheme.primaryColor.withOpacity(0.3),
                      ),
                    ),
                    child: const Row(
                      children: [
                        Icon(
                          Icons.security,
                          color: AppTheme.primaryColor,
                          size: 20,
                        ),
                        SizedBox(width: 8),
                        Expanded(
                          child: Text(
                            'Your privacy is important to us. We are committed to protecting your personal information and being transparent about how we use it.',
                            style: TextStyle(
                              color: AppTheme.primaryColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.green.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: Colors.green.withOpacity(0.3),
                      ),
                    ),
                    child: const Row(
                      children: [
                        Icon(
                          Icons.check_circle,
                          color: Colors.green,
                          size: 20,
                        ),
                        SizedBox(width: 8),
                        Expanded(
                          child: Text(
                            'We will never sell your personal information to third parties.',
                            style: TextStyle(
                              color: Colors.green,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
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
    );
  }

  Widget _buildSection(String title, String content) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: AppTheme.textPrimaryColor,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            content,
            style: const TextStyle(
              fontSize: 16,
              color: AppTheme.textSecondaryColor,
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }
}
