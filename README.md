# Temperature Converter App

## Project Overview
The **Temperature Converter App** is a simple Flutter application that converts temperatures between Fahrenheit and Celsius. The app provides an intuitive interface for users to enter a temperature value, select the unit they want to convert from, and view the converted value along with a conversion history.

## Features
- **Temperature Conversion**: Convert temperatures from Fahrenheit to Celsius and vice versa.
- **Unit Selection**: Toggle between Fahrenheit and Celsius.
- **Conversion History**: View a history of all conversions made during the session.
- **Real-Time Input**: Input field allows real-time updating and displays the converted temperature instantly.
- **Responsive Design**: Optimized for both mobile and tablet devices.

## Getting Started
### Prerequisites
- Ensure that [Flutter SDK](https://flutter.dev/docs/get-started/install) is installed on your development machine.
- A code editor like [Visual Studio Code](https://code.visualstudio.com/) or [Android Studio](https://developer.android.com/studio).
- An emulator or a physical device for running the app.

### Installation and Setup
1. **Clone the repository**:
   ```bash
   git clone https://github.com/your-username/temperature_converter_app.git
   ```
2. **Navigate to the project directory**:
   ```bash
   cd temperature_converter_app
   ```
3. **Install the required dependencies**:
   ```bash
   flutter pub get
   ```
4. **Run the app**:
   ```bash
   flutter run
   ```

### Directory Structure
```bash
temperature_converter_app/
├── lib/
│   ├── main.dart          # The main entry point of the application
├── pubspec.yaml           # Project dependencies and metadata
└── README.md              # Project documentation
```

### Main Code Files
- **`main.dart`**: Contains the UI and logic for temperature conversion and history tracking.

## How to Use the App
1. Launch the app.
2. Select the temperature unit (Fahrenheit or Celsius) using the toggle buttons at the bottom of the screen.
3. Enter the temperature value in the text field.
4. Click the **Convert** button to view the converted value.
5. The result will be displayed below, along with a conversion history list showing the latest conversions.

## Screenshots
### Home Screen
- Displays input fields, toggle buttons, and a conversion button.
### Conversion Result
- Shows the converted temperature value along with the history of conversions.

## Customization
- **Change Theme**: To change the theme color or styles, modify the `theme` property in the `MaterialApp` widget inside `main.dart`.
- **Input Validation**: Currently, the app only accepts numeric inputs. To further customize input validation, update the `inputFormatters` in the `TextField` widget.

## Potential Improvements
- **Unit Addition**: Add support for more temperature units (Kelvin).
- **Persistent Storage**: Save conversion history across sessions using a local database (e.g., `sqflite`).
- **Animations**: Add animations for smoother transitions between states.

## Dependencies
- `flutter/material.dart`: Core library for building UI in Flutter.
- `flutter/services.dart`: Used for input formatting in text fields.

## Contributing
If you wish to contribute to this project, follow these steps:
1. Fork the repository.
2. Create a new feature branch (`feature-branch-name`).
3. Commit your changes.
4. Push the branch and create a pull request.

## Contact
If you have any questions or suggestions, feel free to reach out!

