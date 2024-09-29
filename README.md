## Temperature Converter App

This Flutter application allows users to convert temperatures between Fahrenheit and Celsius. The app provides an intuitive interface for inputting values, switching between conversion types, and viewing the result. It also logs conversion history, making it easy for users to track past conversions.

### Features

**Fahrenheit to Celsius Conversion**: Convert a given temperature from Fahrenheit to Celsius.
**Celsius to Fahrenheit Conversion**: Convert a given temperature from Celsius to Fahrenheit.
**Conversion History**: The app logs each conversion and displays the history in a scrollable list.
**Responsive UI**: The app has a simple yet elegant user interface that adjusts to different screen sizes.
**Toggle Conversion**: Switch between Fahrenheit and Celsius conversion modes using buttons.
**Input Validation**: Prevents invalid input by restricting entries to numbers and decimal points only.

### App Structure

1. **TemperatureConverterApp**: 
   - The main app widget that runs the MaterialApp. It defines the theme and title of the app.
   
2. **TemperatureConverterScreen**: 
   - The core screen widget of the app. It consists of:
     - A top section to input temperature values.
     - Conversion buttons to toggle between Fahrenheit and Celsius.
     - Conversion result display.
     - A list of past conversions.

### Key Functionalities

**Conversion Logic**: The app converts temperatures using standard formulas:
  - Fahrenheit to Celsius: ((F - 32) * 5 / 9)
  - Celsius to Fahrenheit: ((C * 9 / 5) + 32)

**Input Validation**: The app uses TextInputFormatter to filter input, allowing only numbers and decimals.

**State Management**: 
  - The app uses Flutter's setState() to update the UI when a conversion is performed, and the conversion history is updated in real-time.

### Dependencies

Flutter: This app is built using Flutter. Ensure that Flutter is properly installed before running the app.
  
### Installation

1. **Clone the repository:**
      git clone <repository_url>
      
2. **Navigate to the project directory:**
      cd temperature_converter_app
   
3. **Install dependencies:**
      flutter pub get
   
4. **Run the app:**
      flutter run
   
### Screenshots

| Conversion Page | Conversion History |
|-----------------|--------------------|
| ![conversion-page](screenshots/conversion_page.png) | ![history](screenshots/history.png) |

### How It Works

1. **Input Temperature**: Enter a temperature value in the input box.
2. **Select Conversion Type**: Choose between Fahrenheit and Celsius by tapping the respective buttons.
3. **Convert**: Press the "Convert" button to perform the temperature conversion.
4. **View Result**: The converted temperature is displayed in large text on the screen.
5. **Check Conversion History**: The app maintains a log of all past conversions, which can be viewed by scrolling through the history section.

### Future Improvements

**Unit Testing**: Add unit tests for conversion logic.
**UI Enhancements**: Improve the design and add animations for a better user experience.
**Internationalization**: Support multiple languages.
  
