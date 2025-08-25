import 'package:flutter/material.dart';
import '../models/user.dart';
import '../widgets/user_card.dart';
import '../screens/user_detail_screen.dart';

class CustomWaterfallFlow extends StatelessWidget {
  final List<User> users;
  final Function(User user)? onUserTap;

  const CustomWaterfallFlow({
    super.key,
    required this.users,
    this.onUserTap,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final itemWidth = (constraints.maxWidth - 8) / 2; // 2 columns with 8px spacing
        
        return SingleChildScrollView(
          child: _buildWaterfallLayout(itemWidth),
        );
      },
    );
  }

  Widget _buildWaterfallLayout(double itemWidth) {
    List<Widget> leftColumn = [];
    List<Widget> rightColumn = [];
    double leftHeight = 0;
    double rightHeight = 0;

    for (int i = 0; i < users.length; i++) {
      final user = users[i];
      final height = _getRandomHeight(i);
      
      final userCard = SizedBox(
        width: itemWidth,
        height: height,
        child: UserCard(
          user: user,
          onTap: () {
            onUserTap?.call(user);
          },
        ),
      );

      // Add to the shorter column
      if (leftHeight <= rightHeight) {
        leftColumn.add(userCard);
        leftHeight += height + 8; // Add spacing
      } else {
        rightColumn.add(userCard);
        rightHeight += height + 8; // Add spacing
      }
    }

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            children: leftColumn,
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: Column(
            children: rightColumn,
          ),
        ),
      ],
    );
  }

  double _getRandomHeight(int index) {
    // Simple pseudo-random height generation
    final random = (index * 7) % 3;
    switch (random) {
      case 0:
        return 160; // Short
      case 1:
        return 200; // Medium
      case 2:
        return 240; // Tall
      default:
        return 200;
    }
  }
}
