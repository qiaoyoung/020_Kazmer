import 'package:flutter/material.dart';
import '../theme/app_theme.dart';
import '../models/festival.dart';
import '../services/festival_registration_service.dart';

class FestivalDetailScreen extends StatefulWidget {
  final Festival festival;

  const FestivalDetailScreen({
    super.key,
    required this.festival,
  });

  @override
  State<FestivalDetailScreen> createState() => _FestivalDetailScreenState();
}

class _FestivalDetailScreenState extends State<FestivalDetailScreen> {
  bool _isRegistered = false;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _checkRegistrationStatus();
  }

  Future<void> _checkRegistrationStatus() async {
    final isRegistered = await FestivalRegistrationService.isRegistered(widget.festival.id);
    setState(() {
      _isRegistered = isRegistered;
      _isLoading = false;
    });
  }

  String _formatDate(String dateString) {
    final date = DateTime.parse(dateString);
    return '${date.month}/${date.day}/${date.year}';
  }

  String _formatDateRange() {
    final startDate = DateTime.parse(widget.festival.startDate);
    final endDate = DateTime.parse(widget.festival.endDate);
    
    if (startDate.month == endDate.month) {
      return '${startDate.month}/${startDate.day}-${endDate.day}, ${startDate.year}';
    } else {
      return '${startDate.month}/${startDate.day} - ${endDate.month}/${endDate.day}, ${startDate.year}';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.backgroundColor,
      body: CustomScrollView(
        slivers: [
          // App bar with festival image
          SliverAppBar(
            expandedHeight: 300,
            pinned: true,
            backgroundColor: AppTheme.primaryColor,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                fit: StackFit.expand,
                children: [
                  Image.asset(
                    widget.festival.image,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      return Container(
                        color: AppTheme.primaryColor.withOpacity(0.1),
                        child: Icon(
                          Icons.festival,
                          size: 100,
                          color: AppTheme.primaryColor,
                        ),
                      );
                    },
                  ),
                  // Gradient overlay
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.transparent,
                          Colors.black.withOpacity(0.7),
                        ],
                      ),
                    ),
                  ),
                  // Festival name overlay
                  Positioned(
                    bottom: 20,
                    left: 20,
                    right: 20,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.festival.name,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 24,
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
                        if (widget.festival.chineseName != null) ...[
                          const SizedBox(height: 4),
                          Text(
                            widget.festival.chineseName!,
                            style: const TextStyle(
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
                      ],
                    ),
                  ),
                ],
              ),
            ),
            leading: IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ),
          // Festival content
          SliverToBoxAdapter(
            child: Container(
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Basic info section
                  _buildBasicInfoSection(),
                  
                  // Description section
                  _buildDescriptionSection(),
                  
                  // Features section
                  _buildFeaturesSection(),
                  
                  // Stages section
                  _buildStagesSection(),
                  
                  // Genres section
                  _buildGenresSection(),
                  
                  // Special events section
                  _buildSpecialEventsSection(),
                  
                  // Registration button
                  _buildRegistrationButton(),
                  
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBasicInfoSection() {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Date and location
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.calendar_today, size: 16, color: AppTheme.textLightColor),
                        const SizedBox(width: 8),
                        Text(
                          'Date',
                          style: TextStyle(
                            fontSize: 12,
                            color: AppTheme.textLightColor,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 4),
                    Text(
                      _formatDateRange(),
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.location_on, size: 16, color: AppTheme.textLightColor),
                        const SizedBox(width: 8),
                        Text(
                          'Location',
                          style: TextStyle(
                            fontSize: 12,
                            color: AppTheme.textLightColor,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 4),
                    Text(
                      widget.festival.location,
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
          const SizedBox(height: 20),
          // Venue
          Row(
            children: [
              Icon(Icons.place, size: 16, color: AppTheme.textLightColor),
              const SizedBox(width: 8),
              Text(
                'Venue',
                style: TextStyle(
                  fontSize: 12,
                  color: AppTheme.textLightColor,
                ),
              ),
            ],
          ),
          const SizedBox(height: 4),
          Text(
            widget.festival.venue,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: AppTheme.textPrimaryColor,
            ),
          ),
          const SizedBox(height: 20),
          // Price and capacity
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Price Range',
                      style: TextStyle(
                        fontSize: 12,
                        color: AppTheme.textLightColor,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      '${widget.festival.ticketPriceRange.currency} ${widget.festival.ticketPriceRange.min}-${widget.festival.ticketPriceRange.max}',
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: AppTheme.primaryColor,
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
                    const SizedBox(height: 4),
                    Text(
                      '${widget.festival.capacity}',
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: AppTheme.textPrimaryColor,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildDescriptionSection() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppTheme.backgroundColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'About',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: AppTheme.textPrimaryColor,
            ),
          ),
          const SizedBox(height: 12),
          Text(
            widget.festival.description,
            style: TextStyle(
              fontSize: 14,
              color: AppTheme.textSecondaryColor,
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFeaturesSection() {
    return Container(
      margin: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Features',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: AppTheme.textPrimaryColor,
            ),
          ),
          const SizedBox(height: 12),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: widget.festival.features.map((feature) {
              return Container(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                decoration: BoxDecoration(
                  color: AppTheme.primaryColor.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Text(
                  feature,
                  style: TextStyle(
                    fontSize: 12,
                    color: AppTheme.primaryColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }

  Widget _buildStagesSection() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Stages',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: AppTheme.textPrimaryColor,
            ),
          ),
          const SizedBox(height: 12),
          ...widget.festival.stages.map((stage) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: Row(
                children: [
                  Icon(Icons.music_note, size: 16, color: AppTheme.primaryColor),
                  const SizedBox(width: 8),
                  Text(
                    stage,
                    style: TextStyle(
                      fontSize: 14,
                      color: AppTheme.textSecondaryColor,
                    ),
                  ),
                ],
              ),
            );
          }).toList(),
        ],
      ),
    );
  }

  Widget _buildGenresSection() {
    return Container(
      margin: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Music Genres',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: AppTheme.textPrimaryColor,
            ),
          ),
          const SizedBox(height: 12),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: widget.festival.genres.map((genre) {
              return Container(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                decoration: BoxDecoration(
                  color: AppTheme.primaryColor,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Text(
                  genre,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }

  Widget _buildSpecialEventsSection() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Special Events',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: AppTheme.textPrimaryColor,
            ),
          ),
          const SizedBox(height: 12),
          ...widget.festival.specialEvents.map((event) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: Row(
                children: [
                  Icon(Icons.star, size: 16, color: AppTheme.primaryColor),
                  const SizedBox(width: 8),
                  Text(
                    event,
                    style: TextStyle(
                      fontSize: 14,
                      color: AppTheme.textSecondaryColor,
                    ),
                  ),
                ],
              ),
            );
          }).toList(),
        ],
      ),
    );
  }

  Widget _buildRegistrationButton() {
    return Container(
      margin: const EdgeInsets.all(20),
      child: _isLoading
          ? const Center(
              child: CircularProgressIndicator(
                color: AppTheme.primaryColor,
              ),
            )
          : SizedBox(
              width: double.infinity,
              height: 56,
              child: ElevatedButton(
                onPressed: _isRegistered ? null : _handleRegistration,
                style: ElevatedButton.styleFrom(
                  backgroundColor: _isRegistered ? Colors.grey : AppTheme.primaryColor,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Text(
                  _isRegistered ? 'Already Registered' : 'Register Now',
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
    );
  }

  Future<void> _handleRegistration() async {
    try {
      await FestivalRegistrationService.register(widget.festival.id);
      
      // Save registration details
      await FestivalRegistrationService.saveRegistrationDetails(
        widget.festival.id,
        {
          'name': widget.festival.name,
          'location': widget.festival.location,
          'start_date': widget.festival.startDate,
          'end_date': widget.festival.endDate,
          'price_range': '${widget.festival.ticketPriceRange.currency} ${widget.festival.ticketPriceRange.min}-${widget.festival.ticketPriceRange.max}',
          'capacity': widget.festival.capacity,
        },
      );
      
      setState(() {
        _isRegistered = true;
      });
      
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Successfully registered for ${widget.festival.name}!'),
            backgroundColor: Colors.green,
            duration: const Duration(seconds: 3),
            action: SnackBarAction(
              label: 'View My Registrations',
              textColor: Colors.white,
              onPressed: () {
                // TODO: Navigate to registrations page
              },
            ),
          ),
        );
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Registration failed: $e'),
            backgroundColor: Colors.red,
          ),
        );
      }
    }
  }
}
