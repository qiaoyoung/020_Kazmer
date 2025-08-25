import 'package:flutter/material.dart';
import 'dart:convert';
import '../theme/app_theme.dart';
import '../models/festival.dart';
import 'festival_detail_screen.dart';

class FestivalsScreen extends StatefulWidget {
  const FestivalsScreen({super.key});

  @override
  State<FestivalsScreen> createState() => _FestivalsScreenState();
}

class _FestivalsScreenState extends State<FestivalsScreen> {
  List<Festival> _festivals = [];
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _loadFestivals();
  }

  Future<void> _loadFestivals() async {
    setState(() {
      _isLoading = true;
    });

    try {
      final jsonString = await DefaultAssetBundle.of(context).loadString('assets/eve/music_festivals_2025_en.json');
      print('Loaded JSON string length: ${jsonString.length}'); // Debug log
      
      final jsonData = jsonDecode(jsonString) as Map<String, dynamic>;
      print('JSON data keys: ${jsonData.keys.toList()}'); // Debug log
      
      final festivalsList = jsonData['festivals'] as List;
      print('Found ${festivalsList.length} festivals'); // Debug log
      
      final festivals = <Festival>[];
      for (int i = 0; i < festivalsList.length; i++) {
        try {
          final festival = Festival.fromJson(festivalsList[i]);
          festivals.add(festival);
          print('Successfully loaded festival: ${festival.name}'); // Debug log
        } catch (e) {
          print('Error loading festival at index $i: $e'); // Debug log
          print('Festival data: ${festivalsList[i]}'); // Debug log
        }
      }
      
      setState(() {
        _festivals = festivals;
        _isLoading = false;
      });
      print('Total festivals loaded: ${festivals.length}'); // Debug log
    } catch (e) {
      print('Error loading festivals: $e');
      setState(() {
        _isLoading = false;
      });
    }
  }

  String _formatDate(String dateString) {
    final date = DateTime.parse(dateString);
    return '${date.month}/${date.day}/${date.year}';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.backgroundColor,
      body: Stack(
        children: [
          // Background image from battery bar - only top 200px
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            height: 200,
            child: Image.asset(
              'assets/images/kazmer_me_nor.png',
              fit: BoxFit.cover,
              alignment: Alignment.topCenter,
            ),
          ),
          // Content overlay
          Column(
            children: [
              // Top section with image background
              Container(
                height: 200,
                width: double.infinity,
                child: Stack(
                  children: [
                    // Background image - only top 200px
                    Positioned.fill(
                      child: Image.asset(
                        'assets/images/kazmer_me_nor.png',
                        fit: BoxFit.cover,
                        alignment: Alignment.topCenter,
                      ),
                    ),
                    // Gradient overlay for better text visibility
                    Positioned.fill(
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.transparent,
                              Colors.black.withOpacity(0.4),
                            ],
                          ),
                        ),
                      ),
                    ),
                    // Title and subtitle
                    Positioned(
                      bottom: 20,
                      left: 20,
                      right: 20,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Music Festivals 2025',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              shadows: [
                                Shadow(
                                  offset: Offset(0, 2),
                                  blurRadius: 4,
                                  color: Colors.black54,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            'Discover the world\'s biggest music events',
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 16,
                              shadows: [
                                Shadow(
                                  offset: Offset(0, 1),
                                  blurRadius: 2,
                                  color: Colors.black54,
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
              // Festivals content
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: _isLoading
                      ? const Center(
                          child: CircularProgressIndicator(
                            color: AppTheme.primaryColor,
                          ),
                        )
                      : _festivals.isEmpty
                          ? _buildEmptyState()
                          : _buildFestivalsList(),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildEmptyState() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: AppTheme.primaryColor.withOpacity(0.1),
              borderRadius: BorderRadius.circular(50),
            ),
            child: Icon(
              Icons.festival,
              size: 60,
              color: AppTheme.primaryColor,
            ),
          ),
          const SizedBox(height: 24),
          Text(
            'No Festivals Found',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w600,
              color: AppTheme.textPrimaryColor,
            ),
          ),
          const SizedBox(height: 12),
          Text(
            'Check back later for upcoming events',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              color: AppTheme.textLightColor,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFestivalsList() {
    return RefreshIndicator(
      onRefresh: _loadFestivals,
      child: ListView.builder(
        padding: const EdgeInsets.fromLTRB(16, 20, 16, 16),
        itemCount: _festivals.length,
        itemBuilder: (context, index) {
          final festival = _festivals[index];
          return _buildFestivalCard(festival);
        },
      ),
    );
  }

  Widget _buildFestivalCard(Festival festival) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            blurRadius: 15,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Festival image
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            child: AspectRatio(
              aspectRatio: 16 / 9,
              child: Image.asset(
                festival.image,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    color: AppTheme.primaryColor.withOpacity(0.1),
                    child: Icon(
                      Icons.festival,
                      size: 50,
                      color: AppTheme.primaryColor,
                    ),
                  );
                },
              ),
            ),
          ),
          // Festival content
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Festival name and date
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        festival.name,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: AppTheme.textPrimaryColor,
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                      decoration: BoxDecoration(
                        color: AppTheme.primaryColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        _formatDate(festival.startDate),
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                // Location
                Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      size: 16,
                      color: AppTheme.textLightColor,
                    ),
                    const SizedBox(width: 4),
                    Text(
                      festival.location,
                      style: TextStyle(
                        fontSize: 14,
                        color: AppTheme.textLightColor,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                // Description
                Text(
                  festival.description,
                  style: TextStyle(
                    fontSize: 14,
                    color: AppTheme.textSecondaryColor,
                    height: 1.4,
                  ),
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 16),
                // Genres
                Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: festival.genres.take(4).map((genre) {
                    return Container(
                      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                      decoration: BoxDecoration(
                        color: AppTheme.primaryColor.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Text(
                        genre,
                        style: TextStyle(
                          fontSize: 12,
                          color: AppTheme.primaryColor,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    );
                  }).toList(),
                ),
                const SizedBox(height: 16),
                // Price and capacity
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Price',
                            style: TextStyle(
                              fontSize: 12,
                              color: AppTheme.textLightColor,
                            ),
                          ),
                          Text(
                            '${festival.ticketPriceRange.currency} ${festival.ticketPriceRange.min}-${festival.ticketPriceRange.max}',
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: AppTheme.textPrimaryColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'Capacity',
                            style: TextStyle(
                              fontSize: 12,
                              color: AppTheme.textLightColor,
                            ),
                          ),
                          Text(
                            '${festival.capacity}',
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: AppTheme.textPrimaryColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                // View details button
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => FestivalDetailScreen(festival: festival),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppTheme.primaryColor,
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: const Text(
                      'View Details',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
