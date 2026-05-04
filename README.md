# Flutter Auth App

## Overview
This Flutter application provides comprehensive sign-in and login functionalities using Firebase Authentication. It includes features such as email/password authentication, social logins (Google, Facebook), and secure user data handling.

## Getting Started

### Prerequisites
Before running the app, ensure you have Flutter installed. Follow the official [Flutter installation guide](https://flutter.dev/docs/get-started/install) to set up Flutter on your machine.

### Firebase Setup

1. **Create a Firebase Project**:
   - Go to the [Firebase Console](https://console.firebase.google.com/) and create a new project.

2. **Add Android App to Firebase**:
   - In your Firebase project console, select the Android icon to register your app.
   - Enter your Android package name, which can be found in `android/app/src/main/AndroidManifest.xml`.
   - Download the `google-services.json` file and place it in the `android/app` directory of your Flutter project.

3. **Add iOS App to Firebase** (if applicable):
   - In your Firebase project console, select the iOS icon to register your app.
   - Enter your iOS bundle ID, which can be found in `ios/Runner.xcodeproj`.
   - Download the `GoogleService-Info.plist` file and place it in the `ios/Runner` directory of your Flutter project.

4. **Enable Authentication Providers**:
   - Go to the Firebase Console, navigate to `Authentication > Sign-in method`, and enable the desired authentication providers (e.g., Email/Password, Google, Facebook).

### Project Setup

1. **Clone the Repository**:
   ```bash
   git clone https://github.com/your-username/your-repo.git
   cd your-repo
