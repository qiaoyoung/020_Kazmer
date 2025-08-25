import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class CustomTabBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const CustomTabBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppTheme.surfaceColor,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 8,
            offset: const Offset(0, -2),
          ),
        ],
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildTabItem(0, 'assets/images/tabnor/kazmer_tab_1.png'),
              _buildTabItem(1, 'assets/images/tabnor/kazmer_tab_2.png'),
              _buildTabItem(2, 'assets/images/tabnor/kazmer_tab_3.png'),
              _buildTabItem(3, 'assets/images/tabnor/kazmer_tab_4.png'),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTabItem(int index, String imagePath) {
    final isSelected = currentIndex == index;
    
    return GestureDetector(
      onTap: () => onTap(index),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
        child: ColorFiltered(
          colorFilter: ColorFilter.mode(
            isSelected ? AppTheme.primaryColor : AppTheme.textLightColor,
            BlendMode.srcIn,
          ),
          child: Image.asset(
            imagePath,
            width: 24,
            height: 24,
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
