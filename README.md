# athlete_app

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.


Project Folder Structure
This project follows a feature-first folder structure to help organize the codebase efficiently.



# 🚴‍♂️ athlete_app

Welcome to the **Athlete App**! This is a Flutter-based project designed to help athletes manage their profiles, events, and news updates.

---

## 📄 Getting Started

This project is a starting point for a Flutter application. If you're new to Flutter, here are a few resources to get you started:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)
- [Flutter Documentation](https://docs.flutter.dev/)

---

## 🗂 Project Folder Structure

This project follows a **feature-first folder structure** to help organize the codebase efficiently. Here's a breakdown of the project organization:

```plaintext
/lib
├── core/                        # Core utilities and shared resources
│   ├── constants/               # Constants for the app (colors, app-wide constants, etc.)
│   │   ├── app_constants.dart   # All app-wide constants
│   │   ├── color_constants.dart # All color constants
│   │   ├── text_styles.dart     # Text themes
│   ├── env/                     # Environment configuration for dev, prod, and staging
│   │   ├── environment.dart     # Environment setup
│   ├── errors/                  # Error handling utilities
│   │   ├── app_exceptions.dart  # Custom exceptions for API and general errors
│   ├── network/                 # Network and API calls setup
│   │   ├── api_client.dart      # API Client setup (Dio / Http)
│   │   ├── api_endpoints.dart   # API endpoint constants
│   ├── responsive/              # Responsive UI helpers for multiple screen sizes
│   │   ├── responsive.dart      # Screen size helpers
├── features/                    # Feature-first approach
│   ├── auth/                    # Authentication feature
│   │   ├── data/
│   │   │   ├── auth_repository.dart
│   │   │   ├── auth_remote_data_source.dart
│   │   ├── domain/
│   │   │   ├── models/
│   │   │   │   ├── user_model.dart
│   │   ├── presentation/
│   │   │   ├── screens/
│   │   │   │   ├── login_screen.dart
│   │   │   │   ├── signup_screen.dart
│   │   │   ├── providers/
│   │   │   │   ├── auth_provider.dart  # Riverpod providers
│   ├── home/                     # Home feature
│   │   ├── data/
│   │   │   ├── home_repository.dart
│   │   ├── domain/
│   │   │   ├── models/
│   │   │   │   ├── home_data_model.dart
│   │   ├── presentation/
│   │   │   ├── screens/
│   │   │   │   ├── home_screen.dart
│   │   │   ├── providers/
│   │   │   │   ├── home_provider.dart
├── router/                       # Routing setup
│   ├── app_router.dart           # Centralized navigation (using GoRouter or custom Navigator)
│   ├── route_names.dart          # Route names as constants
├── shared/                       # Shared resources
│   ├── widgets/                  # Reusable UI components
│   │   ├── custom_button.dart
│   │   ├── custom_textfield.dart
│   ├── utils/                    # Utility classes and helper functions
│   │   ├── validators.dart       # Form validation helper functions
│   │   ├── helpers.dart          # Miscellaneous helper functions
├── main.dart                     # Main entry point
├── bootstrap.dart                # App startup logic (attach providers etc.)





Steps to Run the Project:
Clean the project (Optional but recommended to avoid issues):


# flutter clean
Get dependencies:


# flutter pub get
Generate code with build_runner: This command will generate code like JSON serialization, Riverpod providers, etc.


 # flutter pub run build_runner build
Run the app: Now, you can run the app on an emulator or device.

# flutter run


Additional Commands:
Watch for changes: You can run the code generator in watch mode, so it automatically regenerates files when code changes.


# flutter pub run build_runner 
