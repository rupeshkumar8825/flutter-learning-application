# 📘 Flutter Learning Notes  
A structured set of notes to track my Flutter learning journey.

---

# ✅ 1. Flutter Basics

## ⭐ What is Flutter?
- Cross-platform UI toolkit by Google.
- Uses **Dart** language.
- Compiles to **native iOS**, **Android**, **Web**, **Windows**, **macOS**, **Linux**.

## ⭐ Flutter File Structure (Typical Project)
```
lib/
  main.dart
android/'
ios/
web/
linux/
windows/
macos/
.pubspec.yaml
```

---

# ✅ 2. Important Flutter Commands

```bash
flutter doctor       # Check setup
flutter create app   # Create new project
flutter devices      # List devices
flutter run          # Run project
flutter clean        # Clear build files
flutter pub get      # Fetch dependencies
flutter build apk    # Build release APK
```

---

# ✅ 3. Dart Basics (Very Important)

## ✅ Variables
```dart
int age = 20;
String name = "Rupesh";
bool isLoggedIn = false;
```

## ✅ Functions
```dart
void greet(String name) {
  print("Hello $name");
}
```

## ✅ Classes
```dart
class Person {
  String name;
  int age;

  Person(this.name, this.age);
}
```

---

# ✅ 4. Widgets

## ⭐ Two types:
- **StatelessWidget** → UI does NOT change
- **StatefulWidget** → UI changes

### ✅ StatelessWidget Example
```dart
class HelloWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text("Hello Flutter!");
  }
}
```

### ✅ StatefulWidget Example
```dart
class CounterPage extends StatefulWidget {
  @override
  _CounterPageState createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int count = 0;

  void increment() {
    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Count: $count"),
        ElevatedButton(
          onPressed: increment,
          child: Text("Increase"),
        )
      ],
    );
  }
}
```

---

# ✅ 5. Layout Widgets (MOST USED)

| Widget | Purpose |
|--------|---------|
| `Row` | Horizontal layout |
| `Column` | Vertical layout |
| `Container` | Styling, padding, margin |
| `Padding` | Add spacing around widgets |
| `Center` | Center a widget |
| `Expanded` | Fill remaining space |
| `SizedBox` | Fixed height/width |
| `ListView` | Scrollable list |

### Example:
```dart
Column(
  children: [
    Text("Title"),
    SizedBox(height: 20),
    Row(
      children: [
        Icon(Icons.star),
        Text("Rating")
      ],
    )
  ],
)
```

---

# ✅ 6. Styling Widgets

```dart
Container(
  padding: EdgeInsets.all(20),
  margin: EdgeInsets.symmetric(horizontal: 10),
  decoration: BoxDecoration(
    color: Colors.blue,
    borderRadius: BorderRadius.circular(10),
  ),
  child: Text("Styled Box"),
)
```

---

# ✅ 7. Navigation (Routing)

### ✅ Basic Navigation
```dart
Navigator.push(
  context,
  MaterialPageRoute(builder: (_) => SecondPage()),
);
```

### ✅ Go Back
```dart
Navigator.pop(context);
```

---

# ✅ 8. Working With Assets

### ✅ In `pubspec.yaml`
```yaml
assets:
  - assets/images/
  - assets/icons/
```

### ✅ Usage
```dart
Image.asset("assets/images/flutter.png")
```

---

# ✅ 9. Fetch Data From Internet (API)

```dart
import 'package:http/http.dart' as http;
import 'dart:convert';

Future fetchUsers() async {
  final response = await http.get(Uri.parse("https://jsonplaceholder.typicode.com/users"));
  return jsonDecode(response.body);
}
```

---

# ✅ 10. State Management (Beginner Level)

### ✅ 1. setState → for simple UI updates  
### ✅ 2. Provider → recommended for beginners  
### ✅ 3. Riverpod → modern, powerful  
### ✅ 4. Bloc / Cubit → for large apps

### ✅ Provider Example
```dart
class Counter extends ChangeNotifier {
  int value = 0;

  void increment() {
    value++;
    notifyListeners();
  }
}
```

---

# ✅ 11. Common Flutter Errors & Fixes

### ❌ “Widget not found”
✅ Check if you imported it:
```dart
import 'package:flutter/material.dart';
```

### ❌ pubspec.yaml indentation error
✅ YAML is sensitive — use 2 spaces, no tabs.

### ❌ Hot reload not working
✅ Restart app (hot restart), not hot reload.

---

# ✅ 12. Useful Notes / Tips

> **Note:** Always run `flutter pub get` after updating dependencies.  
> **Tip:** Use `const` widgets whenever possible for performance.  
> **Warning:** Never commit the `build/` folder to Git.  

---

# ✅ 13. My TODO List

- [x] Install Flutter  
- [x] Build first UI  
- [ ] Learn Navigation  
- [ ] Learn Provider  
- [ ] Work with APIs  
- [ ] Make full project  

---

# ✅ 14. Personal Notes (Your Space)

You can write anything here:

- Concepts learned today  
- Problems faced  
- Solutions  
- Ideas for next project  
- Commands to remember  

---

# ✅ 15. Quick Reference Cheatsheet

### Colors
```dart
Colors.blue
Colors.red
Colors.green
```

### Icons
```dart
Icon(Icons.home)
Icon(Icons.search)
```

### Buttons
```dart
ElevatedButton(onPressed: () {}, child: Text("Click"))
```

---

# ✅ End of Template
This file will grow as I learn more about Flutter 🚀
