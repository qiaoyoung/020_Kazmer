class Festival {
  final String id;
  final String name;
  final String? chineseName;
  final String description;
  final String location;
  final String venue;
  final String startDate;
  final String endDate;
  final String image;
  final List<String> features;
  final String capacity;
  final TicketPriceRange ticketPriceRange;
  final List<String> headliners;
  final List<String> stages;
  final List<String> genres;
  final List<String> specialEvents;

  Festival({
    required this.id,
    required this.name,
    this.chineseName,
    required this.description,
    required this.location,
    required this.venue,
    required this.startDate,
    required this.endDate,
    required this.image,
    required this.features,
    required this.capacity,
    required this.ticketPriceRange,
    required this.headliners,
    required this.stages,
    required this.genres,
    required this.specialEvents,
  });

  factory Festival.fromJson(Map<String, dynamic> json) {
    return Festival(
      id: json['id'] ?? '',
      name: json['name'] ?? '',
      chineseName: json['chinese_name'],
      description: json['description'] ?? '',
      location: json['location'] ?? '',
      venue: json['venue'] ?? '',
      startDate: json['start_date'] ?? '',
      endDate: json['end_date'] ?? '',
      image: json['image'] ?? '',
      features: List<String>.from(json['features'] ?? []),
      capacity: json['capacity'] ?? '',
      ticketPriceRange: TicketPriceRange.fromJson(json['ticket_price_range'] ?? {}),
      headliners: List<String>.from(json['headliners'] ?? []),
      stages: List<String>.from(json['stages'] ?? []),
      genres: List<String>.from(json['genres'] ?? []),
      specialEvents: List<String>.from(json['special_events'] ?? []),
    );
  }
}

class TicketPriceRange {
  final int min;
  final int max;
  final String currency;

  TicketPriceRange({
    required this.min,
    required this.max,
    required this.currency,
  });

  factory TicketPriceRange.fromJson(Map<String, dynamic> json) {
    return TicketPriceRange(
      min: json['min'] ?? 0,
      max: json['max'] ?? 0,
      currency: json['currency'] ?? 'USD',
    );
  }
}
