import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class TermsOfServiceScreen extends StatelessWidget {
  const TermsOfServiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.backgroundColor,
      appBar: AppBar(
        title: const Text(
          'Terms of Service',
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
                    'Welcome to Kazmer!',
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
                    '1. Acceptance of Terms',
                    'By accessing and using the Kazmer application, you accept and agree to be bound by the terms and provision of this agreement.',
                  ),
                  _buildSection(
                    '2. Description of Service',
                    'Kazmer is a social media platform designed for music festival enthusiasts to share their experiences, discover festivals, and connect with other music lovers.',
                  ),
                  _buildSection(
                    '3. User Responsibilities',
                    '• Share your music festival experiences responsibly\n'
                    '• Respect other users and their content\n'
                    '• Follow community guidelines\n'
                    '• Not share inappropriate or harmful content\n'
                    '• Maintain accurate and up-to-date profile information',
                  ),
                  _buildSection(
                    '4. Content Guidelines',
                    '• All content must be original or properly attributed\n'
                    '• No copyright infringement\n'
                    '• No hate speech or discriminatory content\n'
                    '• No spam or misleading information\n'
                    '• No explicit or adult content',
                  ),
                  _buildSection(
                    '5. Privacy and Data',
                    'We collect and process your data in accordance with our Privacy Policy. By using Kazmer, you consent to such processing.',
                  ),
                  _buildSection(
                    '6. Intellectual Property',
                    'You retain ownership of content you create, but grant Kazmer a license to use, display, and distribute your content within the platform.',
                  ),
                  _buildSection(
                    '7. Prohibited Activities',
                    '• Creating fake accounts or impersonating others\n'
                    '• Harassing or bullying other users\n'
                    '• Attempting to gain unauthorized access\n'
                    '• Using the service for commercial purposes without permission\n'
                    '• Violating any applicable laws or regulations',
                  ),
                  _buildSection(
                    '8. Termination',
                    'We reserve the right to terminate or suspend your account at any time for violations of these terms or for any other reason at our sole discretion.',
                  ),
                  _buildSection(
                    '9. Disclaimers',
                    'Kazmer is provided "as is" without warranties of any kind. We are not responsible for any content posted by users.',
                  ),
                  _buildSection(
                    '10. Limitation of Liability',
                    'In no event shall Kazmer be liable for any indirect, incidental, special, or consequential damages arising from your use of the service.',
                  ),
                  _buildSection(
                    '11. Changes to Terms',
                    'We reserve the right to modify these terms at any time. Continued use of the service after changes constitutes acceptance of the new terms.',
                  ),
                  _buildSection(
                    '12. Contact Information',
                    'If you have any questions about these Terms of Service, please contact us at:\n\n'
                    'Email: support@kazmer.com\n'
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
                          Icons.info_outline,
                          color: AppTheme.primaryColor,
                          size: 20,
                        ),
                        SizedBox(width: 8),
                        Expanded(
                          child: Text(
                            'By using Kazmer, you acknowledge that you have read, understood, and agree to be bound by these Terms of Service.',
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
