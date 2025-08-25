import 'package:flutter/material.dart';
import '../models/post.dart';
import '../widgets/post_card.dart';
import '../theme/app_theme.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int _selectedTabIndex = 0;

  // Mock user data
  final String _userName = 'Alex Johnson';
  final String _userAvatar = 'https://images.unsplash.com/photo-1472099645785-5658abf4ff4e?w=150';
  final String _userBio = 'Music festival enthusiast and adventure seeker. Love sharing amazing moments from festivals around the world! 🎵✨';
  final int _followersCount = 1247;
  final int _followingCount = 892;
  final int _postsCount = 45;

  // Mock posts data
  final List<Post> _userPosts = [
    Post(
      id: '1',
      userId: 'user1',
      userName: 'Alex Johnson',
      userAvatar: 'https://images.unsplash.com/photo-1472099645785-5658abf4ff4e?w=150',
      festivalId: 'fest1',
      festivalName: 'Coachella 2024',
      content: 'Amazing vibes at Coachella! The energy here is absolutely incredible. Can\'t believe how good the performances have been so far. #Coachella2024 #MusicFestival #AmazingVibes',
      images: [
        'https://images.unsplash.com/photo-1459749411175-04bf5292ceea?w=400',
        'https://images.unsplash.com/photo-1516450360452-9312f5e86fc7?w=400',
      ],
      createdAt: DateTime.now().subtract(const Duration(hours: 2)),
      likeCount: 1247,
      commentCount: 89,
      isLiked: true,
      tags: ['Coachella2024', 'MusicFestival', 'AmazingVibes'],
    ),
    Post(
      id: '2',
      userId: 'user1',
      userName: 'Alex Johnson',
      userAvatar: 'https://images.unsplash.com/photo-1472099645785-5658abf4ff4e?w=150',
      festivalId: 'fest2',
      festivalName: 'Tomorrowland',
      content: 'The stage design at Tomorrowland is mind-blowing! Every detail is perfect. The light show synchronized with the music is absolutely breathtaking. #Tomorrowland #EDM #LightShow',
      images: [
        'https://images.unsplash.com/photo-1516450360452-9312f5e86fc7?w=400',
      ],
      createdAt: DateTime.now().subtract(const Duration(days: 1)),
      likeCount: 2156,
      commentCount: 156,
      isLiked: false,
      tags: ['Tomorrowland', 'EDM', 'LightShow'],
    ),
    Post(
      id: '3',
      userId: 'user1',
      userName: 'Alex Johnson',
      userAvatar: 'https://images.unsplash.com/photo-1472099645785-5658abf4ff4e?w=150',
      festivalId: 'fest3',
      festivalName: 'Glastonbury Festival',
      content: 'Glastonbury never disappoints! The atmosphere here is magical. Meeting so many amazing people and discovering new artists. The food trucks are amazing too! #Glastonbury #FestivalLife #NewArtists',
      images: [
        'https://images.unsplash.com/photo-1459749411175-04bf5292ceea?w=400',
        'https://images.unsplash.com/photo-1516450360452-9312f5e86fc7?w=400',
        'https://images.unsplash.com/photo-1493225457124-a3eb161ffa5f?w=400',
      ],
      createdAt: DateTime.now().subtract(const Duration(days: 3)),
      likeCount: 892,
      commentCount: 67,
      isLiked: true,
      tags: ['Glastonbury', 'FestivalLife', 'NewArtists'],
    ),
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _tabController.addListener(() {
      setState(() {
        _selectedTabIndex = _tabController.index;
      });
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.backgroundColor,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300,
            floating: false,
            pinned: true,
            backgroundColor: AppTheme.surfaceColor,
            elevation: 0,
            actions: [
              IconButton(
                icon: const Icon(Icons.settings, color: AppTheme.primaryColor),
                onPressed: () {
                  _showSettingsDialog();
                },
              ),
            ],
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [AppTheme.primaryColor, AppTheme.secondaryColor],
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(height: 60),
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: NetworkImage(_userAvatar),
                      onBackgroundImageError: (exception, stackTrace) {
                        // Handle error
                      },
                    ),
                    const SizedBox(height: 16),
                    Text(
                      _userName,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Text(
                        'Festival Enthusiast',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    _userBio,
                    style: Theme.of(context).textTheme.bodyLarge,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _buildStatItem('Posts', _postsCount.toString()),
                      _buildStatItem('Followers', _followersCount.toString()),
                      _buildStatItem('Following', _followingCount.toString()),
                    ],
                  ),
                  const SizedBox(height: 24),
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            _showEditProfileDialog();
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppTheme.primaryColor,
                            foregroundColor: Colors.white,
                          ),
                          child: const Text('Edit Profile'),
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: OutlinedButton(
                          onPressed: () {
                            _showShareProfileDialog();
                          },
                          style: OutlinedButton.styleFrom(
                            foregroundColor: AppTheme.primaryColor,
                            side: const BorderSide(color: AppTheme.primaryColor),
                          ),
                          child: const Text('Share Profile'),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: AppTheme.surfaceColor,
                borderRadius: BorderRadius.circular(12),
              ),
              child: TabBar(
                controller: _tabController,
                indicatorColor: AppTheme.primaryColor,
                labelColor: AppTheme.primaryColor,
                unselectedLabelColor: AppTheme.textSecondaryColor,
                tabs: const [
                  Tab(icon: Icon(Icons.grid_on), text: 'Posts'),
                  Tab(icon: Icon(Icons.favorite), text: 'Liked'),
                  Tab(icon: Icon(Icons.bookmark), text: 'Saved'),
                ],
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  if (_selectedTabIndex == 0) {
                    return PostCard(
                      post: _userPosts[index],
                      onTap: () {
                        // Navigate to post detail
                      },
                      onLike: () {
                        setState(() {
                          _userPosts[index] = Post(
                            id: _userPosts[index].id,
                            userId: _userPosts[index].userId,
                            userName: _userPosts[index].userName,
                            userAvatar: _userPosts[index].userAvatar,
                            festivalId: _userPosts[index].festivalId,
                            festivalName: _userPosts[index].festivalName,
                            content: _userPosts[index].content,
                            images: _userPosts[index].images,
                            createdAt: _userPosts[index].createdAt,
                            likeCount: _userPosts[index].isLiked 
                                ? _userPosts[index].likeCount - 1 
                                : _userPosts[index].likeCount + 1,
                            commentCount: _userPosts[index].commentCount,
                            isLiked: !_userPosts[index].isLiked,
                            tags: _userPosts[index].tags,
                          );
                        });
                      },
                      onComment: () {
                        // Handle comment
                      },
                    );
                  } else {
                    return Container(
                      height: 200,
                      margin: const EdgeInsets.symmetric(vertical: 8),
                      decoration: BoxDecoration(
                        color: AppTheme.surfaceColor,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: AppTheme.textLightColor.withOpacity(0.2)),
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              _selectedTabIndex == 1 ? Icons.favorite : Icons.bookmark,
                              size: 48,
                              color: AppTheme.textLightColor,
                            ),
                            const SizedBox(height: 8),
                            Text(
                              _selectedTabIndex == 1 ? 'No liked posts yet' : 'No saved posts yet',
                              style: TextStyle(
                                color: AppTheme.textLightColor,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }
                },
                childCount: _selectedTabIndex == 0 ? _userPosts.length : 1,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStatItem(String label, String value) {
    return Column(
      children: [
        Text(
          value,
          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
            color: AppTheme.primaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          label,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }

  void _showSettingsDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Settings'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              title: const Text('Account Settings'),
              leading: const Icon(Icons.person),
              onTap: () {
                Navigator.pop(context);
                // Navigate to account settings
              },
            ),
            ListTile(
              title: const Text('Privacy'),
              leading: const Icon(Icons.privacy_tip),
              onTap: () {
                Navigator.pop(context);
                // Navigate to privacy settings
              },
            ),
            ListTile(
              title: const Text('Notifications'),
              leading: const Icon(Icons.notifications),
              onTap: () {
                Navigator.pop(context);
                // Navigate to notification settings
              },
            ),
            ListTile(
              title: const Text('Help & Support'),
              leading: const Icon(Icons.help),
              onTap: () {
                Navigator.pop(context);
                // Navigate to help
              },
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
        ],
      ),
    );
  }

  void _showEditProfileDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Edit Profile'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              decoration: const InputDecoration(
                labelText: 'Name',
                border: OutlineInputBorder(),
              ),
              controller: TextEditingController(text: _userName),
            ),
            const SizedBox(height: 16),
            TextField(
              decoration: const InputDecoration(
                labelText: 'Bio',
                border: OutlineInputBorder(),
              ),
              controller: TextEditingController(text: _userBio),
              maxLines: 3,
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
              // Save profile changes
            },
            child: const Text('Save'),
          ),
        ],
      ),
    );
  }

  void _showShareProfileDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Share Profile'),
        content: const Text('Share your profile with friends and family!'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
              // Share profile
            },
            child: const Text('Share'),
          ),
        ],
      ),
    );
  }
}
