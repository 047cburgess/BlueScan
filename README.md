# BlueScan 🐟

BlueScan is an iOS application designed to help consumers make sustainable seafood choices. Using barcode scanning technology and educational content, the app empowers users to understand the environmental impact of their seafood purchases and discover sustainable alternatives.

## 🌊 About

BlueScan addresses the critical issue of ocean conservation by making sustainable seafood information accessible to everyone. The app helps users understand the impact of their choices on marine ecosystems, fishing practices, and ocean acidification.

## ✨ Features

### 🔍 Barcode Scanner
- Scan product barcodes (EAN13, Code128, UPCE) to get instant information
- Integration with Open Food Facts API for product details
- Sustainability ratings for seafood products
- View information on:
  - Sustainable fishing practices
  - Resource status
  - Seasonality
  - Species status
  - Aquaculture practices
  - Environmental impact

### 📰 Educational Content
- Daily ocean conservation tips and articles
- Information about ocean acidification
- Sustainable fishing practices
- Marine ecosystem preservation

### 🗺️ Location Finder
- Interactive map showing sustainable restaurants
- Discover seafood establishments committed to sustainable practices
- View restaurant details including:
  - Ratings and reviews
  - Opening hours
  - Addresses
  - Sustainability tags

### 🍽️ Recipes
- Browse sustainable seafood recipes
- Learn to cook with environmentally-friendly ingredients

### 📱 Onboarding Experience
- Interactive onboarding flow
- Introduction to sustainable seafood consumption
- App feature overview

## 🛠️ Technical Stack

- **Language**: Swift
- **Framework**: SwiftUI
- **iOS Features**:
  - VisionKit (DataScannerViewController) for barcode scanning
  - MapKit for location-based features
  - Core Location for geolocation services
- **APIs**:
  - Open Food Facts API for product information
- **Minimum iOS Version**: iOS 16+ (required for DataScannerViewController)

## 📋 Requirements

- iOS 16.0+
- Xcode 14.0+
- Device with camera support for barcode scanning
- Location services permission for map features

## 🚀 Installation

1. Clone the repository:
```bash
git clone https://github.com/047cburgess/BlueScan.git
cd BlueScan
```

2. Create a new Xcode project:
   - Open Xcode
   - Create a new iOS App project
   - Name it "BlueScan"
   - Add all the Swift files from the cloned repository to your project
   - Ensure you configure the required capabilities:
     - Camera usage description in Info.plist
     - Location services permission in Info.plist

3. Select your target device or simulator (iOS 16.0+)

4. Build and run the project (⌘ + R)

> **Note**: This repository contains Swift source files. You'll need to set up an Xcode project to build and run the application.

## 📱 Usage

### First Launch
1. Complete the onboarding flow to learn about sustainable seafood
2. Grant camera permission for barcode scanning
3. Grant location permission for map features

### Scanning Products
1. Navigate to the scanner screen
2. Point your camera at a seafood product barcode
3. Tap on the detected barcode
4. View sustainability information and ratings
5. Find sustainable alternatives if recommended

### Finding Sustainable Restaurants
1. Open the map view
2. Browse nearby sustainable seafood restaurants
3. Tap on markers to view details
4. Get directions to your chosen location

## 🏗️ Project Structure

```
BlueScan/
├── Home.swift                  # Main home screen
├── ScannerScreen.swift         # Barcode scanner implementation
├── Map.swift                   # Interactive map view
├── MapDetails.swift            # Detailed location information
├── Structures.swift            # Data models (Articles, Pin, History)
├── Recipes.swift               # Recipe browsing
├── RecipeDetail.swift          # Individual recipe view
├── ActusInfos.swift           # News and information feed
├── Actualites1.swift          # News articles
├── InfosDetails.swift         # Article detail view
├── onboarding1.swift          # Onboarding screens
├── onboarding2.swift
├── onboarding3.swift
├── onboarding4.swift
├── locationManager.swift       # Location services handler
├── Parsing.swift              # Data parsing utilities
└── Source.json                # Configuration/data source
```

## 🎨 Design

BlueScan uses a custom color scheme with:
- **Primary Blue** (customBleu) - Main text and headers
- **Orange** (customOrange) - Call-to-action buttons and highlights
- **Green** (customVert) - Positive sustainability indicators
- **Mauve** (customMauve) - Map markers
- Custom fonts: Poppins-Bold and Quicksand_Book

## 🤝 Contributing

Contributions are welcome! Please feel free to submit pull requests or open issues for bugs and feature requests.

## 📄 License

This project was created as part of an educational initiative. Please contact the repository owner for licensing information.

## 👥 Credits

Developed by students as part of a sustainable development and ocean conservation initiative.

## 🔮 Future Enhancements

- Expanded database of sustainable seafood products
- User accounts and favorites
- Community reviews and ratings
- More detailed sustainability metrics
- Integration with additional seafood databases
- Support for more languages
- Offline mode for product database

## 📞 Contact

For questions or suggestions, please open an issue on GitHub or contact the repository maintainer.

---

**Remember**: Every sustainable choice makes a difference for our oceans! 🌊🐠
