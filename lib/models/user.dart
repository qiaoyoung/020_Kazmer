class User {
  final String userId;
  final UserProfile profile;
  final MusicPreferences musicPreferences;
  final FestivalExperience festivalExperience;
  final PersonalCharacteristics personalCharacteristics;
  final FestivalStyle festivalStyle;
  final FuturePlans futurePlans;
  final EngagementMetrics engagementMetrics;
  final List<String> tags;

  User({
    required this.userId,
    required this.profile,
    required this.musicPreferences,
    required this.festivalExperience,
    required this.personalCharacteristics,
    required this.festivalStyle,
    required this.futurePlans,
    required this.engagementMetrics,
    required this.tags,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      userId: json['user_id'],
      profile: UserProfile.fromJson(json['profile']),
      musicPreferences: MusicPreferences.fromJson(json['music_preferences']),
      festivalExperience: FestivalExperience.fromJson(json['festival_experience']),
      personalCharacteristics: PersonalCharacteristics.fromJson(json['personal_characteristics']),
      festivalStyle: FestivalStyle.fromJson(json['festival_style']),
      futurePlans: FuturePlans.fromJson(json['future_plans']),
      engagementMetrics: EngagementMetrics.fromJson(json['engagement_metrics']),
      tags: List<String>.from(json['tags']),
    );
  }
}

class UserProfile {
  final String username;
  final String displayName;
  final int age;
  final String gender;
  final String location;
  final String occupation;
  final String bio;
  final String avatar;
  final String video;

  UserProfile({
    required this.username,
    required this.displayName,
    required this.age,
    required this.gender,
    required this.location,
    required this.occupation,
    required this.bio,
    required this.avatar,
    required this.video,
  });

  factory UserProfile.fromJson(Map<String, dynamic> json) {
    return UserProfile(
      username: json['username'],
      displayName: json['display_name'],
      age: json['age'],
      gender: json['gender'],
      location: json['location'],
      occupation: json['occupation'],
      bio: json['bio'],
      avatar: json['avatar'],
      video: json['video'],
    );
  }
}

class MusicPreferences {
  final List<String> favoriteGenres;
  final List<String> favoriteArtists;
  final List<String> musicMood;
  final String listeningHabits;

  MusicPreferences({
    required this.favoriteGenres,
    required this.favoriteArtists,
    required this.musicMood,
    required this.listeningHabits,
  });

  factory MusicPreferences.fromJson(Map<String, dynamic> json) {
    return MusicPreferences(
      favoriteGenres: List<String>.from(json['favorite_genres']),
      favoriteArtists: List<String>.from(json['favorite_artists']),
      musicMood: List<String>.from(json['music_mood']),
      listeningHabits: json['listening_habits'],
    );
  }
}

class FestivalExperience {
  final String festivalName;
  final String festivalLocation;
  final String festivalDate;
  final String festivalType;
  final String experienceDescription;
  final List<String> highlights;
  final List<String> memorableMoments;

  FestivalExperience({
    required this.festivalName,
    required this.festivalLocation,
    required this.festivalDate,
    required this.festivalType,
    required this.experienceDescription,
    required this.highlights,
    required this.memorableMoments,
  });

  factory FestivalExperience.fromJson(Map<String, dynamic> json) {
    return FestivalExperience(
      festivalName: json['festival_name'],
      festivalLocation: json['festival_location'],
      festivalDate: json['festival_date'],
      festivalType: json['festival_type'],
      experienceDescription: json['experience_description'],
      highlights: List<String>.from(json['highlights']),
      memorableMoments: List<String>.from(json['memorable_moments']),
    );
  }
}

class PersonalCharacteristics {
  final List<String> personalityTraits;
  final List<String> interests;
  final String lifePhilosophy;
  final String socialMediaStyle;

  PersonalCharacteristics({
    required this.personalityTraits,
    required this.interests,
    required this.lifePhilosophy,
    required this.socialMediaStyle,
  });

  factory PersonalCharacteristics.fromJson(Map<String, dynamic> json) {
    return PersonalCharacteristics(
      personalityTraits: List<String>.from(json['personality_traits']),
      interests: List<String>.from(json['interests']),
      lifePhilosophy: json['life_philosophy'],
      socialMediaStyle: json['social_media_style'],
    );
  }
}

class FestivalStyle {
  final String outfitPreference;
  final String danceStyle;
  final String socialBehavior;
  final String energyLevel;

  FestivalStyle({
    required this.outfitPreference,
    required this.danceStyle,
    required this.socialBehavior,
    required this.energyLevel,
  });

  factory FestivalStyle.fromJson(Map<String, dynamic> json) {
    return FestivalStyle(
      outfitPreference: json['outfit_preference'],
      danceStyle: json['dance_style'],
      socialBehavior: json['social_behavior'],
      energyLevel: json['energy_level'],
    );
  }
}

class FuturePlans {
  final List<String> upcomingFestivals;
  final String musicGoals;
  final String travelPlans;

  FuturePlans({
    required this.upcomingFestivals,
    required this.musicGoals,
    required this.travelPlans,
  });

  factory FuturePlans.fromJson(Map<String, dynamic> json) {
    return FuturePlans(
      upcomingFestivals: List<String>.from(json['upcoming_festivals']),
      musicGoals: json['music_goals'],
      travelPlans: json['travel_plans'],
    );
  }
}

class EngagementMetrics {
  final int postsCount;
  final int followers;
  final int following;
  final double engagementRate;
  final String favoriteContentType;

  EngagementMetrics({
    required this.postsCount,
    required this.followers,
    required this.following,
    required this.engagementRate,
    required this.favoriteContentType,
  });

  factory EngagementMetrics.fromJson(Map<String, dynamic> json) {
    return EngagementMetrics(
      postsCount: json['posts_count'],
      followers: json['followers'],
      following: json['following'],
      engagementRate: json['engagement_rate'].toDouble(),
      favoriteContentType: json['favorite_content_type'],
    );
  }
}
