import 'package:flutter/material.dart';
import '../models/festival.dart';
import '../widgets/festival_card.dart';
import '../theme/app_theme.dart';

class FestivalScreen extends StatefulWidget {
  const FestivalScreen({super.key});

  @override
  State<FestivalScreen> createState() => _FestivalScreenState();
}

class _FestivalScreenState extends State<FestivalScreen> {
  int _selectedFilter = 0;
  final List<String> _filters = ['All', 'Upcoming', 'Past', 'My Festivals'];
  String _searchQuery = '';

  // Mock data for festivals
  final List<Festival> _allFestivals = [
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
    Festival(
      id: 'fest4',
      name: 'Ultra Music Festival',
      location: 'Miami, Florida',
      startDate: DateTime(2024, 3, 22),
      endDate: DateTime(2024, 3, 24),
      imageUrl: 'https://images.unsplash.com/photo-1493225457124-a3eb161ffa5f?w=400',
      description: 'The world\'s premier electronic music festival',
      genres: ['EDM', 'House', 'Dubstep', 'Trap'],
      attendeeCount: 165000,
      rating: 4.6,
      isUpcoming: false,
    ),
    Festival(
      id: 'fest5',
      name: 'Burning Man',
      location: 'Black Rock City, Nevada',
      startDate: DateTime(2024, 8, 25),
      endDate: DateTime(2024, 9, 2),
      imageUrl: 'https://images.unsplash.com/photo-1459749411175-04bf5292ceea?w=400',
      description: 'A week-long event in the desert focused on community, art, and self-expression',
      genres: ['Experimental', 'Art', 'Community', 'Alternative'],
      attendeeCount: 80000,
      rating: 4.5,
      isUpcoming: true,
    ),
    Festival(
      id: 'fest6',
      name: 'Lollapalooza',
      location: 'Chicago, Illinois',
      startDate: DateTime(2024, 8, 1),
      endDate: DateTime(2024, 8, 4),
      imageUrl: 'https://images.unsplash.com/photo-1516450360452-9312f5e86fc7?w=400',
      description: 'Annual four-day music festival featuring popular alternative rock, heavy metal, punk rock, hip hop, and electronic dance music',
      genres: ['Alternative Rock', 'Hip-Hop', 'Electronic', 'Indie'],
      attendeeCount: 400000,
      rating: 4.4,
      isUpcoming: true,
    ),
    Festival(
      id: 'fest7',
      name: 'Electric Daisy Carnival',
      location: 'Las Vegas, Nevada',
      startDate: DateTime(2024, 5, 17),
      endDate: DateTime(2024, 5, 19),
      imageUrl: 'https://images.unsplash.com/photo-1493225457124-a3eb161ffa5f?w=400',
      description: 'The largest electronic dance music festival in North America',
      genres: ['EDM', 'House', 'Trance', 'Dubstep'],
      attendeeCount: 400000,
      rating: 4.7,
      isUpcoming: true,
    ),
    Festival(
      id: 'fest8',
      name: 'SXSW',
      location: 'Austin, Texas',
      startDate: DateTime(2024, 3, 8),
      endDate: DateTime(2024, 3, 16),
      imageUrl: 'https://images.unsplash.com/photo-1459749411175-04bf5292ceea?w=400',
      description: 'Annual conglomerate of film, interactive media, and music festivals and conferences',
      genres: ['Indie', 'Alternative', 'Rock', 'Electronic'],
      attendeeCount: 280000,
      rating: 4.3,
      isUpcoming: false,
    ),
  ];

  List<Festival> get _filteredFestivals {
    List<Festival> filtered = _allFestivals;

    // Apply search filter
    if (_searchQuery.isNotEmpty) {
      filtered = filtered.where((festival) {
        return festival.name.toLowerCase().contains(_searchQuery.toLowerCase()) ||
               festival.location.toLowerCase().contains(_searchQuery.toLowerCase()) ||
               festival.genres.any((genre) => genre.toLowerCase().contains(_searchQuery.toLowerCase()));
      }).toList();
    }

    // Apply category filter
    switch (_selectedFilter) {
      case 1: // Upcoming
        filtered = filtered.where((festival) => festival.isUpcoming).toList();
        break;
      case 2: // Past
        filtered = filtered.where((festival) => !festival.isUpcoming).toList();
        break;
      case 3: // My Festivals (mock data - would be user's festivals)
        filtered = filtered.take(3).toList(); // Just show first 3 as example
        break;
    }

    return filtered;
  }

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
                'Festivals',
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
                icon: const Icon(Icons.filter_list, color: AppTheme.primaryColor),
                onPressed: () {
                  _showFilterDialog();
                },
              ),
            ],
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppTheme.surfaceColor,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 4,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: TextField(
                onChanged: (value) {
                  setState(() {
                    _searchQuery = value;
                  });
                },
                decoration: const InputDecoration(
                  hintText: 'Search festivals...',
                  prefixIcon: Icon(Icons.search, color: AppTheme.textSecondaryColor),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 50,
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: _filters.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.only(right: 12),
                    child: ChoiceChip(
                      label: Text(_filters[index]),
                      selected: _selectedFilter == index,
                      onSelected: (selected) {
                        setState(() {
                          _selectedFilter = index;
                        });
                      },
                      selectedColor: AppTheme.primaryColor,
                      labelStyle: TextStyle(
                        color: _selectedFilter == index ? Colors.white : AppTheme.textPrimaryColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return FestivalCard(
                    festival: _filteredFestivals[index],
                    onTap: () {
                      _showFestivalDetail(_filteredFestivals[index]);
                    },
                  );
                },
                childCount: _filteredFestivals.length,
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _showFilterDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Filter Festivals'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              title: const Text('Sort by Date'),
              leading: const Icon(Icons.calendar_today),
              onTap: () {
                Navigator.pop(context);
                // Implement sort by date
              },
            ),
            ListTile(
              title: const Text('Sort by Rating'),
              leading: const Icon(Icons.star),
              onTap: () {
                Navigator.pop(context);
                // Implement sort by rating
              },
            ),
            ListTile(
              title: const Text('Sort by Attendees'),
              leading: const Icon(Icons.people),
              onTap: () {
                Navigator.pop(context);
                // Implement sort by attendees
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

  void _showFestivalDetail(Festival festival) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => Container(
        height: MediaQuery.of(context).size.height * 0.8,
        decoration: const BoxDecoration(
          color: AppTheme.surfaceColor,
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        ),
        child: Column(
          children: [
            Container(
              width: 40,
              height: 4,
              margin: const EdgeInsets.symmetric(vertical: 12),
              decoration: BoxDecoration(
                color: AppTheme.textLightColor,
                borderRadius: BorderRadius.circular(2),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.network(
                        festival.imageUrl,
                        height: 200,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      festival.name,
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        const Icon(Icons.location_on, color: AppTheme.textSecondaryColor),
                        const SizedBox(width: 4),
                        Text(
                          festival.location,
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Text(
                      festival.description,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    const SizedBox(height: 16),
                    Row(
                      children: [
                        const Icon(Icons.star, color: Colors.amber),
                        const SizedBox(width: 4),
                        Text(
                          '${festival.rating}',
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        const SizedBox(width: 16),
                        const Icon(Icons.people, color: AppTheme.textSecondaryColor),
                        const SizedBox(width: 4),
                        Text(
                          '${festival.attendeeCount}',
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Wrap(
                      spacing: 8,
                      runSpacing: 4,
                      children: festival.genres.map((genre) {
                        return Container(
                          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                          decoration: BoxDecoration(
                            color: AppTheme.primaryColor.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Text(
                            genre,
                            style: const TextStyle(
                              color: AppTheme.primaryColor,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                    const SizedBox(height: 24),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          // Handle festival registration
                        },
                        child: const Text('Register for Festival'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
