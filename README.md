# Wallpaper Guru (Flutter Application)
<!-- Logo will added soon -->
<!-- ![Wallpaper Guru Logo](your_logo_here.png) -->

## Overview

**Wallpaper Guru** is a Flutter application that allows users to explore and discover high-quality wallpapers from various categories. It leverages the Pexels API to fetch stunning images and provides a user-friendly interface for wallpaper enthusiasts. This README serves as a guide for users and contributors to the project.

<table>
<tr>
<td> <img src="./assets/present/home_screen.png" alt="Home Screen" height="200px"/> </td>
<td> <img src="./assets/present/full_screen.png" alt="Full Screen" height="200px"/> </td>
</tr>
</table>
## Table of Contents

- [Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Installation](#installation)
- [Usage](#usage)
- [Contributing](#contributing)
- [API Controller](#api-controller)
- [License](#license)

## Getting Started

### Prerequisites

Before you start using or contributing to Wallpaper Guru, ensure you have the following prerequisites installed:

- [Flutter](https://flutter.dev/docs/get-started/install) and [Dart](https://dart.dev/get-dart) (the project was developed using Flutter 2.5.0 and Dart 2.14.0).
- A code editor or IDE of your choice (e.g., [Visual Studio Code](https://code.visualstudio.com/), [Android Studio](https://developer.android.com/studio), [IntelliJ IDEA](https://www.jetbrains.com/idea/)).
- A Pexels API key, which you can obtain by signing up on the [Pexels API](https://www.pexels.com/api/).

### Installation

1. Clone the repository to your local machine:

   ```bash
   git clone https://github.com/DeepeshKalura/wallpaperApplicationWithFlutterAndPexelsAPI
   ```

2. Change your working directory to the project folder:

   ```bash
   cd wallpaperApplicationWithFlutterAndPexelsAPI
   ```

3. Create a `.env` file in the root directory of your project and add your Pexels API key:

   ```
   API_KEY=your_pexels_api_key_here
   ```

4. Install project dependencies using Flutter's package manager:

   ```bash
   flutter pub get
   ```

5. Run the application on an emulator or physical device:

   ```bash
   flutter run
   ```

## Usage

- Upon launching the app, users can explore trending wallpapers fetched from the Pexels API.

- Users can search for wallpapers using specific keywords.

- The app provides various categories of wallpapers, and users can click on a category to view wallpapers related to that category.

- Wallpaper Guru also keeps track of the number of views for each wallpaper, giving users insights into the popularity of wallpapers.

## Contributing

We welcome contributions from the community to make Wallpaper Guru even better. Here's how you can contribute:

1. Fork the repository to your GitHub account.

2. Clone the forked repository to your local machine:

   ```bash
   git clone https://github.com/your-username/wallpaper-guru.git
   ```

3. Create a new branch for your feature or bug fix:

   ```bash
   git checkout -b feature/your-new-feature
   ```

4. Make your changes and commit them with clear and concise commit messages:

   ```bash
   git commit -m "Add your commit message here"
   ```

5. Push your changes to your fork on GitHub:

   ```bash
   git push origin feature/your-new-feature
   ```

6. Create a pull request (PR) from your forked repository to the main project repository, describing your changes and why they should be merged.

7. Your PR will be reviewed by project maintainers, and once approved, it will be merged into the main project.

## API Controller

The `ApiController` in this project is responsible for fetching wallpapers from the Pexels API. It provides functions to retrieve trending wallpapers, search for wallpapers, and fetch category-specific wallpapers. Make sure to include your Pexels API key in the `.env` file for the API to work.


## Future Plans

We're committed to continuously improving Wallpaper Guru and adding exciting features to enhance your wallpaper experience. Here are some of the features we plan to implement in future updates:

### 1. User-Provided Image Wallpaper

- **Description**: We understand that personalization is key, so we're working on allowing users to upload their own images and convert them into high-quality wallpapers. You'll be able to use your favorite photos, artwork, or snapshots as wallpapers with ease.

### 2. Wallpaper Generation with Text

- **Description**: We're excited to introduce a feature that lets you create wallpapers with customized text overlays. Whether it's your favorite quote, a special message, or even your name, you'll have the option to add text to your wallpapers in various fonts, styles, and colors.

### 3. Advanced Wallpaper Editor

- **Description**: We plan to introduce an advanced wallpaper editor that will allow you to fine-tune your wallpapers. Adjust brightness, contrast, saturation, and apply filters to create wallpapers that match your aesthetic preferences.

### 4. User Profiles and Collections

- **Description**: We're working on implementing user profiles and wallpaper collections. You'll be able to save your favorite wallpapers, organize them into collections, and easily access them later. Additionally, you can share your collections with others.

### 5. Wallpaper Recommendations

- **Description**: To make your wallpaper discovery even better, we aim to provide personalized wallpaper recommendations based on your preferences and past interactions with the app.

### 6. Social Integration

- **Description**: We plan to integrate social features that will allow you to share your favorite wallpapers on social media platforms and connect with other wallpaper enthusiasts.

### 7. Improved Performance and Stability

- **Description**: Our commitment to providing a seamless and responsive experience means ongoing optimization for improved performance and stability.

### 8. Feedback and Support

- **Description**: We value your feedback and plan to enhance our customer support channels, making it easier for you to reach out with questions, suggestions, and issues.

We're excited about the future of Wallpaper Guru and hope these planned features will make it an even more valuable and enjoyable wallpaper application for our users. Stay tuned for updates and thank you for your support!


## License

This project has no license.
