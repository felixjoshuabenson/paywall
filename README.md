# Paywell - RevenueCat Paywall UI Recreation

A fast, pixel-precise Flutter recreation of the RevenueCat Paywall Challenge UI for the [RevenueCat World Paywall Speed Building Championship 2025](https://www.revenuecat.com). This app mimics both the Annual and Monthly subscription tabs with trial logic, fonts, and timeline UI to match the competition's requirements.

# Features

- UI matching the official challenge design
- Dynamic pricing subtitle based on selected tab
- Custom timeline icons with connecting lines
- Fully integrated Manrope font family
- Responsive design with dark theme matching original
- Organized file structure using best Flutter practices

---

# Project Structure

```

paywell/
├── assets/
│   ├── fonts/               # Manrope font files
│   └── paywall\_graphic.png  # Header illustration
├── lib/
│   ├── main.dart
│   └── src/
│       ├── screens/
│       │   ├── paywall\_screen.dart
│       │   ├── annual\_plan\_tab.dart
│       │   └── monthly\_plan\_tab.dart
│       └── widgets/
│           └── build\_timeline\_item.dart
├── pubspec.yaml
└── README.md

````


# Usage

This project is a UI demo and doesn't connect to actual in-app purchases or RevenueCat APIs. It's optimized for visual and speed-accurate submission recordings for the challenge.

# Credits

* Design based on the official RevenueCat Paywall UI
* Fonts: [Manrope](https://fonts.google.com/specimen/Manrope)
* Icons: Material Icons (Flutter)

---

# License

MIT License. Use this code as a reference, but don’t forget to credit if you share or adapt it.

```
MIT © 2025 [Felix Joshua Benson]
```