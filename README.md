
# FBLA Student Portfolio App

This portfolio app is a specially designed for students in high school to showcase all their achievemtns as well as be able to view other student's portfolios. 
This is all in one cohesive app allows you to show individual aspects about yourself and also a full high school portfolio.

# Installation
## Visual Studio Code Setup

This guide provides step-by-step instructions on how to download and set up Visual Studio Code (VSCode) on your machine.

## Table of Contents

- [Download](#download)
- [Installation](#installation)
- [Extensions](#extensions)
- [Usage](#usage)
- [Contributing](#contributing)
- [License](#license)

## Download

Visit the official Visual Studio Code website to download the latest version:
[VSCode Download](https://code.visualstudio.com/download)

Choose the appropriate version for your operating system (Windows, macOS, or Linux).

## Installation

### Windows

1. Run the installer executable (.exe) you downloaded.
2. Follow the on-screen instructions to complete the installation.
3. Ensure the "Add to PATH" option is selected during installation.

### macOS

1. Open the downloaded `.dmg` file.
2. Drag the Visual Studio Code application to the Applications folder.
3. Open VSCode from the Applications folder.

### Linux

1. Follow the distribution-specific installation instructions available on the VSCode website.

## Extensions

Enhance your VSCode experience by installing useful extensions. Some popular extensions include:

- [Bracket Pair Colorizer](https://marketplace.visualstudio.com/items?itemName=CoenraadS.bracket-pair-colorizer)
- [ESLint](https://marketplace.visualstudio.com/items?itemName=dbaeumer.vscode-eslint)
- [GitLens](https://marketplace.visualstudio.com/items?itemName=eamodio.gitlens)

Install extensions from the Extensions view (`Ctrl + Shift + X`).

## Usage

Open VSCode and start coding! Customize your settings, themes, and explore the available features.

## Contributing

If you encounter issues with the setup process or have suggestions, feel free to open an issue or contribute to the project.

1. Fork the repository.
2. Create a new branch (`git checkout -b feature/awesome-feature`).
3. Commit your changes (`git commit -am 'Add some awesome feature'`).
4. Push to the branch (`git push origin feature/awesome-feature`).
5. Open a pull request.

## License

This project is licensed under the [MIT License](LICENSE).

---

Happy coding with Visual Studio Code!

## Setting up Android SDK for Visual Studio Code

### Step 1: Install Java Development Kit (JDK)

Download and install the latest version of JDK (Java Development Kit) from the official Oracle website.

- [Oracle JDK Download](https://www.oracle.com/java/technologies/javase-downloads.html)

### Step 2: Download Android Studio

Download and install Android Studio, which includes the Android SDK, from the official Android Developer website.

- [Android Studio Download](https://developer.android.com/studio)

### Step 3: Configure Android SDK in Android Studio

1. Open Android Studio.
2. Go to **Configure** > **SDK Manager**.
3. Install the necessary SDK Platforms and SDK Tools for the Android versions you plan to target.

### Step 4: Set up ANDROID_HOME Environment Variable

1. Find the path where Android SDK is installed. This is typically in the `Android/Sdk` directory within your user directory.
2. Set the `ANDROID_HOME` environment variable to the path of your Android SDK installation.

For example, on Windows:

```powershell
$env:ANDROID_HOME = "C:\Users\YourUsername\AppData\Local\Android\Sdk"
```
On macOS/Linux: 
```
export ANDROID_HOME=~/Library/Android/sdk
```
### Step 5: Install Android SDK Platform Tools
1. Open a terminal or command prompt.
2. Run the following command to install Android SDK Platform Tools:
```
sdkmanager platform-tools
```
### Step 6: Install Visual Studio Code Extensions
1. Open Visual Studio Code.
2. Go to the Extensions view by clicking on the Extensions icon in the Activity Bar on the side of the window.
3. Search for and install the "Java Extension Pack" by Microsoft.
### Step 7: Configure Visual Studio Code for Android Development
1. Install the "Flutter" extension if you are developing Flutter applications.
2. Open your Android project in Visual Studio Code.
3. Configure the java.home and flutter.sdkPath settings in your Visual Studio Code settings.
\
Example settings.json:
```
{
  "java.home": "/path/to/jdk",
  "dart.sdkPath": "/path/to/flutter"
}
```
### Step 8: Verify Setup
1. Open a terminal in Visual Studio Code.
2. Run the following command to verify Java is correctly configured:
```
java -version
```
1. Run the following command to verify Flutter is correctly configured (if using Flutter):
```
flutter doctor
```
Now, you should have successfully set up Android SDK for development with Visual Studio Code.
## Install Flutter Extension
1. Open VSCode
2. Go to the Extensions view ('Ctrl + Shift + X').
3. Search for "Flutter" and install the official Flutter extension provided by the Flutter team.
### Create a Flutter Project
1. Open a terminal in VSCode
2. Run the following command to create a new Flutter Project
```
flutter create my_flutter_app
```
3. Change into project directory:
```
cd my_flutter_app
```
### Run Your Flutter App
1. Connect a device or start an emulator. (Android SDk)
2. Run the following command to launch your FlutterApp:
```
flutter run
```
Happy coding with Flutter and Visual Studio Code!
# Using the emulator
# Android SDK Emulator with Visual Studio Code

This guide provides step-by-step instructions on how to use the Android SDK emulator with Visual Studio Code (VSCode) for Android app development.

## Table of Contents

- [Prerequisites](#prerequisites)
- [Install Android SDK](#install-android-sdk)
- [Set Up Android Emulator](#set-up-android-emulator)
- [Install VSCode](#install-vscode)
- [Install VSCode Extensions](#install-vscode-extensions)
- [Configure VSCode for Android Development](#configure-vscode-for-android-development)
- [Run Your App on Android Emulator](#run-your-app-on-android-emulator)


## Prerequisites

Before you begin, make sure you have the following installed on your machine:

- Android Studio (includes Android SDK)
- Visual Studio Code (VSCode)

## Install Android SDK

1. Download and install Android Studio from the official website: [Android Studio](https://developer.android.com/studio).
2. Launch Android Studio and follow the setup wizard to install the Android SDK.

## Set Up Android Emulator

1. Open Android Studio.
2. Go to "Configure" > "AVD Manager."
3. Create a new Android Virtual Device (AVD) by following the instructions in the AVD Manager.

## Install VSCode

Visit the official Visual Studio Code website to download the latest version: [VSCode Download](https://code.visualstudio.com/download).

## Install VSCode Extensions

1. Open VSCode.
2. Go to the Extensions view (`Ctrl + Shift + X`).
3. Search for and install the following extensions:
   - `Dart` (for Dart language support)
   - `Flutter` (for Flutter development)

## Configure VSCode for Android Development

1. Open VSCode.
2. Install the `Java Extension Pack` for Java language support.
3. Configure the Java Home path in VSCode settings.

```json
"java.home": "<path to JDK>",
```
### Run Your App on Andriod Emulator
1. Open your Flutter project in vscode
2. Open a terminal.
3. Run the following command to build and run your app on the Android emulator:
```
flutter run
```
# FBLA_SP - Downloading the Repository

Welcome to FBLA_SP, a Flutter app designed for high school students to manage various aspects of their high school journey.

## Table of Contents

- [Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Clone the Repository](#clone-the-repository)
- [Project Structure](#project-structure)
- [Running the App](#running-the-app)
- [Contributing](#contributing)
- [License](#license)

## Getting Started

Follow the steps below to get started with the FBLA_SP repository.

### Prerequisites

Ensure you have the following installed on your machine:

- [Flutter](https://flutter.dev/docs/get-started/install)
- [Android SDK](https://dart.dev/get-dart)
- [Visual Studio Code](https://code.visualstudio.com/download) (recommended code editor)

### Clone the Repository

Open your terminal and run the following command to clone the repository:

```bash
git clone https://github.com/Ronith-Neelam1429/FBLA_SP.git
```
## Viewing the Project
1. After cloning, open the project in VSCode
2. Then open Android SDK and start an emulator
3. Connect VSCode to the emulator and Run
\
# FBLA_SP - Private Repository

Welcome to FBLA_SP, a Flutter app designed for FBLA (Future Business Leaders of America) members. This repository is private, and unauthorized use, reproduction, or distribution is strictly prohibited.

## Repository

Access to this repository is restricted. Unauthorized use or access is not allowed.

## Copyright and License

© 2024 [Ronith Neelam & Abhiram Somisetty]

This project is not licensed for public use. All rights reserved. Unauthorized use, reproduction, or distribution of this software is strictly prohibited.



## Usage

This repository is for personal or authorized use only. Any other use is prohibited.

## Contributing

Contributions to this private repository are not accepted.

## Support

For inquiries or support, please contact me at ronithneelam1429@gmail.com.

Thank you for your understanding.

