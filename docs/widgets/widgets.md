# Flutter Widgets – Beginner Notes

These are my notes for understanding widgets in Flutter as a beginner.

---

# 1. What is a Widget?

In Flutter, everything on the screen is a widget. Widgets are the building blocks
of a Flutter app's user interface. 

Widgets form a hierarchy based on composition. Each widget nests inside its parent
and can receive context from the parent. This structure carries all the way up to
the root widget. 

Examples of widgets:
- Text  
- Buttons  
- Images  
- Layouts (Row, Column)  
- Padding  
- AppBar  
- Entire screens  

Widgets = building blocks of Flutter UI.

The entire app itself is a widget:
```dart
void main() {
  runApp(MyApp());
}
```

Another example code showing the usages of widgets is as follows: 
``` dart
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp( // Root widget
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My Home Page'),
        ),
        body: Center(
          child: Builder(
            builder: (context) {
              return Column(
                children: [
                  const Text('Hello, World!'),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      print('Click!');
                    },
                    child: const Text('A button'),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
```

---

# 2. Types of Widgets

Flutter has two major widget types:

---

## 2.1 StatelessWidget  
Use when the UI does not change. 
In order to use the feature of the hot reload we need to use stateless widgets. 
The dart do not runs the main() again on hot reload.

Examples:
- Labels  
- Icons  
- Static text  
- Read-only UI  

Example:
```dart
class MyTextWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text("Hello Flutter");
  }
}
```

---

## 2.2 StatefulWidget  
Use when the UI changes based on user interaction or data.

Examples:
- Counter  
- TextField input  
- Animations  
- API updates  

Example:
```dart
class CounterWidget extends StatefulWidget {
  @override
  State<CounterWidget> createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Count: $count"),
        ElevatedButton(
          onPressed: () {
            setState(() {
              count++;
            });
          },
          child: Text("Increase"),
        )
      ],
    );
  }
}
```

---

# 3. The Widget Tree

Flutter UI is structured like a tree.

Example:
```
Scaffold
 └── AppBar
 └── Body
      └── Column
            ├── Text
            ├── Row
            │     ├── Icon
            │     └── Text
            └── ElevatedButton
```

Widgets inside widgets → this is the widget tree.

---

# 4. Categories of Widgets

Flutter widgets can be divided into 3 major groups:

---

## 4.1 Structural Widgets
These define screen structure:

| Widget | Purpose |
|--------|---------|
| Scaffold | Main page layout |
| AppBar | Top bar |
| Drawer | Sidebar |
| Body | Main content area |
| BottomNavigationBar | Bottom tabs |

Example:
```dart
Scaffold(
  appBar: AppBar(title: Text("Home")),
  body: Center(child: Text("Hello")),
);
```

---

## 4.2 Layout Widgets

Used to arrange elements on the screen.

| Widget | Purpose |
|--------|---------|
| Row | Horizontal layout |
| Column | Vertical layout |
| Center | Center content |
| Padding | Add spacing |
| Container | Styling and layout |
| Expanded | Fill available space |
| SizedBox | Fixed size spacing |
| ListView | Scrollable list |

Example:
```dart
Column(
  children: [
    Text("Title"),
    SizedBox(height: 20),
    Row(
      children: [
        Icon(Icons.star),
        Text("Rating"),
      ],
    ),
  ],
);
```

---

## 4.3 Input & Interactive Widgets

| Widget | Purpose |
|--------|---------|
| ElevatedButton | Button |
| TextField | User input |
| Checkbox | Toggle |
| Switch | Toggle |
| GestureDetector | Detect taps and gestures |

Example:
```dart
ElevatedButton(
  onPressed: () {},
  child: Text("Click Me"),
);
```

---

# 5. How Flutter Updates the UI

Flutter follows a reactive UI model.

Steps:
1. Data changes  
2. You call `setState()`  
3. Flutter rebuilds only the affected widgets  
4. UI updates instantly  

Example:
```dart
setState(() {
  count++;
});
```

---

# 6. Commonly Used Widgets (80% of UI)

These widgets are used in almost every Flutter app:
- Text  
- Container  
- Row  
- Column  
- SizedBox  
- Padding  
- Center  
- Scaffold  
- AppBar  
- ElevatedButton  
- ListView  
- Image  

Master these first.

---

# 7. Practice UI Example

A small Flutter app using the most common widgets:

```dart
class SimpleApp extends StatefulWidget {
  @override
  State<SimpleApp> createState() => _SimpleAppState();
}

class _SimpleAppState extends State<SimpleApp> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My First App")),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Text(
              "Count: $count",
              style: TextStyle(fontSize: 24),
            ),

            SizedBox(height: 20),

            ElevatedButton(
              child: Text("Increase"),
              onPressed: () {
                setState(() {
                  count++;
                });
              },
            )

          ],
        ),
      ),
    );
  }
}
```

---

# 8. Summary

- A widget is anything visible on screen  
- Two types: StatelessWidget, StatefulWidget  
- The widget tree is the core concept  
- Layout widgets help arrange UI  
- Use setState to update UI  
- Learn the most common widgets first  

