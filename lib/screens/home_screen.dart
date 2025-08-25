import 'package:flutter/material.dart';
import '../models/post.dart';
import '../models/festival.dart';
import '../widgets/post_card.dart';
import '../widgets/festival_card.dart';
import '../theme/app_theme.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  final List<String> _categories = ['All', 'Recent', 'Popular', 'Following'];

  // Mock data for posts
  final List<Post> _posts = [
    Post(
      id: '1',
      userId: 'user1',
      userName: 'Sarah Johnson',
      userAvatar: 'https://images.unsplash.com/photo-1494790108755-2616b612b786?w=150',
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
      userId: 'user2',
      userName: 'Mike Chen',
      userAvatar: 'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?w=150',
      festivalId: 'fest2',
      festivalName: 'Tomorrowland',
      content: 'The stage design at Tomorrowland is mind-blowing! Every detail is perfect. The light show synchronized with the music is absolutely breathtaking. #Tomorrowland #EDM #LightShow',
      images: [
        'https://images.unsplash.com/photo-1516450360452-9312f5e86fc7?w=400',
      ],
      createdAt: DateTime.now().subtract(const Duration(hours: 5)),
      likeCount: 2156,
      commentCount: 156,
      isLiked: false,
      tags: ['Tomorrowland', 'EDM', 'LightShow'],
    ),
    Post(
      id: '3',
      userId: 'user3',
      userName: 'Emma Davis',
      userAvatar: 'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?w=150',
      festivalId: 'fest3',
      festivalName: 'Glastonbury Festival',
      content: 'Glastonbury never disappoints! The atmosphere here is magical. Meeting so many amazing people and discovering new artists. The food trucks are amazing too! #Glastonbury #FestivalLife #NewArtists',
      images: [
        'https://images.unsplash.com/photo-1459749411175-04bf5292ceea?w=400',
        'https://images.unsplash.com/photo-1516450360452-9312f5e86fc7?w=400',
        'https://images.unsplash.com/photo-1493225457124-a3eb161ffa5f?w=400',
      ],
      createdAt: DateTime.now().subtract(const Duration(days: 1)),
      likeCount: 892,
      commentCount: 67,
      isLiked: true,
      tags: ['Glastonbury', 'FestivalLife', 'NewArtists'],
    ),
    Post(
      id: '4',
      userId: 'user4',
      userName: 'Alex Rodriguez',
      userAvatar: 'https://images.unsplash.com/photo-1472099645785-5658abf4ff4e?w=150',
      festivalId: 'fest4',
      festivalName: 'Ultra Music Festival',
      content: 'Ultra Miami was absolutely insane! The crowd energy was off the charts. The fireworks display during the closing set was the perfect ending to an incredible weekend. #UltraMiami #EDM #Fireworks',
      images: [
        'https://images.unsplash.com/photo-1493225457124-a3eb161ffa5f?w=400',
      ],
      createdAt: DateTime.now().subtract(const Duration(days: 2)),
      likeCount: 3421,
      commentCount: 234,
      isLiked: false,
      tags: ['UltraMiami', 'EDM', 'Fireworks'],
    ),
    Post(
      id: '5',
      userId: 'user5',
      userName: 'Lisa Wang',
      userAvatar: 'https://images.unsplash.com/photo-1544005313-94ddf0286df2?w=150',
      festivalId: 'fest5',
      festivalName: 'Burning Man',
      content: 'Burning Man is a completely different experience. The art installations are incredible and the community spirit is unlike anything I\'ve ever experienced. Truly transformative! #BurningMan #ArtInstallations #Community',
      images: [
        'https://images.unsplash.com/photo-1459749411175-04bf5292ceea?w=400',
        'https://images.unsplash.com/photo-1516450360452-9312f5e86fc7?w=400',
      ],
      createdAt: DateTime.now().subtract(const Duration(days: 3)),
      likeCount: 1567,
      commentCount: 98,
      isLiked: true,
      tags: ['BurningMan', 'ArtInstallations', 'Community'],
    ),
  ];

  // Mock data for festivals
  final List<Festival> _festivals = [
    Festival(
      id: 'fest1',
      name: 'Coachella 2024',
      location: 'Indio, California',
      startDate: DateTime(2024, 4, 12),
      endDate: DateTime(2024, 4, 21),
      imageUrl: 'https://images.unsplash.com/photo-1459749411175-04bf5292ceea?w=400',
      description: 'The most iconic music and arts festival in the world',
      genres: ['Pop', 'Rock', 'Hip-Hop', 'Electronic'],
      attendeeCount: 125000,
      rating: 4.8,
      isUpcoming: true,
    ),
    Festival(
      id: 'fest2',
      name: 'Tomorrowland',
      location: 'Boom, Belgium',
      startDate: DateTime(2024, 7, 19),
      endDate: DateTime(2024, 7, 28),
      imageUrl: 'https://images.unsplash.com/photo-1516450360452-9312f5e86fc7?w=400',
      description: 'The world\'s biggest electronic dance music festival',
      genres: ['EDM', 'House', 'Trance', 'Techno'],
      attendeeCount: 400000,
      rating: 4.9,
      isUpcoming: true,
    ),
    Festival(
      id: 'fest3',
      name: 'Glastonbury Festival',
      location: 'Pilton, England',
      startDate: DateTime(2024, 6, 26),
      endDate: DateTime(2024, 6, 30),
      imageUrl: 'https://images.unsplash.com/photo-1493225457124-a3eb161ffa5f?w=400',
      description: 'The legendary British music festival',
      genres: ['Rock', 'Indie', 'Folk', 'Alternative'],
      attendeeCount: 135000,
      rating: 4.7,
      isUpcoming: true,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.backgroundColor,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 120,
            floating: false,
            pinned: true,
            backgroundColor: AppTheme.surfaceColor,
            elevation: 0,
            flexibleSpace: FlexibleSpaceBar(
              title: const Text(
                'Kazmer',
                style: TextStyle(
                  color: AppTheme.primaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              background: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [AppTheme.primaryColor, AppTheme.secondaryColor],
                  ),
                ),
              ),
            ),
            actions: [
              IconButton(
                icon: const Icon(Icons.search, color: AppTheme.primaryColor),
                onPressed: () {
                  // Handle search
                },
              ),
              IconButton(
                icon: const Icon(Icons.notifications_outlined, color: AppTheme.primaryColor),
                onPressed: () {
                  // Handle notifications
                },
              ),
            ],
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 50,
              margin: const EdgeInsets.symmetric(vertical: 8),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                itemCount: _categories.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.only(right: 12),
                    child: ChoiceChip(
                      label: Text(_categories[index]),
                      selected: _selectedIndex == index,
                      onSelected: (selected) {
                        setState(() {
                          _selectedIndex = index;
                        });
                      },
                      selectedColor: AppTheme.primaryColor,
                      labelStyle: TextStyle(
                        color: _selectedIndex == index ? Colors.white : AppTheme.textPrimaryColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 200,
              margin: const EdgeInsets.symmetric(vertical: 8),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                itemCount: _festivals.length,
                itemBuilder: (context, index) {
                  return SizedBox(
                    width: 300,
                    child: FestivalCard(
                      festival: _festivals[index],
                      onTap: () {
                        // Navigate to festival detail
                      },
                    ),
                  );
                },
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return PostCard(
                  post: _posts[index],
                  onTap: () {
                    // Navigate to post detail
                  },
                  onLike: () {
                    setState(() {
                      _posts[index] = Post(
                        id: _posts[index].id,
                        userId: _posts[index].userId,
                        userName: _posts[index].userName,
                        userAvatar: _posts[index].userAvatar,
                        festivalId: _posts[index].festivalId,
                        festivalName: _posts[index].festivalName,
                        content: _posts[index].content,
                        images: _posts[index].images,
                        createdAt: _posts[index].createdAt,
                        likeCount: _posts[index].isLiked 
                            ? _posts[index].likeCount - 1 
                            : _posts[index].likeCount + 1,
                        commentCount: _posts[index].commentCount,
                        isLiked: !_posts[index].isLiked,
                        tags: _posts[index].tags,
                      );
                    });
                  },
                  onComment: () {
                    // Handle comment
                  },
                );
              },
              childCount: _posts.length,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Handle create post
        },
        backgroundColor: AppTheme.primaryColor,
        child: const Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}
