# Kazmer - Music Festival Social App

A Flutter application for music festival enthusiasts to share experiences, discover festivals, and connect with fellow music lovers.

## 🎵 Features

### Current Implementation
- **Login Screen**: Beautiful onboarding with background image and terms agreement
- **Terms of Service**: Complete terms and conditions page
- **Privacy Policy**: Comprehensive privacy policy page
- **4-Module Structure**: Placeholder screens for future implementation
- **Custom Tab Bar**: Using custom tabnor images with theme color integration

### Module Structure
1. **Home** - Discover music festival experiences
2. **Festivals** - Explore upcoming festivals
3. **Community** - Connect with festival enthusiasts
4. **Profile** - Manage personal settings

## 🎨 Design

- **Theme Color**: #4B43DE (Primary Purple)
- **Modern UI**: Material Design 3 with custom components
- **Responsive**: Adapts to different screen sizes
- **Custom Tab Bar**: Uses tabnor images with color filtering

## 📱 Screenshots

### Login Screen
- Background: `assets/images/kazmer_login_bg.jpg`
- Gradient overlay for text readability
- Decorative lines and circular elements
- Terms agreement with navigation to detailed pages

### Tab Bar
- Uses images from `assets/images/tabnor/`
- Default state: Light gray color
- Selected state: Theme color (#4B43DE)
- Smooth transitions and interactions

## 🚀 Getting Started

1. **Clone the repository**
2. **Install dependencies**: `flutter pub get`
3. **Run the app**: `flutter run`

## 📁 Project Structure

```
lib/
├── main.dart                 # App entry point
├── theme/
│   └── app_theme.dart        # Theme configuration
├── screens/
│   ├── login_screen.dart     # Login/onboarding
│   ├── placeholder_screen.dart # Generic placeholder
│   ├── terms_of_service_screen.dart
│   └── privacy_policy_screen.dart
└── widgets/
    ├── custom_tab_bar.dart   # Custom tab bar
    └── decoration_lines.dart # Background decoration
```

## 🎯 Next Steps

The app currently has placeholder screens for the 4 main modules. Future development will include:

1. **Home Module**: Feed of festival posts and experiences
2. **Festivals Module**: Festival discovery and booking
3. **Community Module**: Social features and user interaction
4. **Profile Module**: User profile management

## 📄 Legal

- Terms of Service: Comprehensive user agreement
- Privacy Policy: Data protection and user rights
- Contact information provided in both documents

## 🛠️ Technical Details

- **Flutter Version**: 3.8.1+
- **Dart Version**: 3.0+
- **Platforms**: iOS, Android, Web
- **State Management**: StatefulWidget for local state
- **Navigation**: Named routes with MaterialApp

## 📞 Support

For support or questions, please contact:
- Email: support@kazmer.com
- Phone: +743 (1363) 532-4647
