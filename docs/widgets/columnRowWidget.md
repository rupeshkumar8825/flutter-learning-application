# Row and Column Widgets – Flutter Notes

Rows and Columns are two of the **most important layout widgets** in Flutter.  
They help arrange widgets **horizontally** and **vertically**.

---

# 1. What is a Row?

A `Row` arranges widgets **horizontally** (left to right).

Example:
```dart
Row(
  children: [
    Text("Hello"),
    Text("World"),
  ],
)
```

This shows:
Hello   World  
(next to each other)

---

# 2. What is a Column?

A `Column` arranges widgets **vertically** (top to bottom).

Example:
```dart
Column(
  children: [
    Text("Hello"),
    Text("World"),
  ],
)
```

This shows:
Hello  
World  
(one below another)

---

# 3. Main Axis and Cross Axis

Both Row and Column have **two axes**:

## 3.1 Row
- **Main Axis** → Horizontal (left to right)
- **Cross Axis** → Vertical (top to bottom)

## 3.2 Column
- **Main Axis** → Vertical (top to bottom)
- **Cross Axis** → Horizontal (left to right)

Understanding axes helps with alignment.

---

# 4. mainAxisAlignment (Controls Main Axis Alignment)

### Common values:
- `MainAxisAlignment.start`
- `MainAxisAlignment.center`
- `MainAxisAlignment.end`
- `MainAxisAlignment.spaceBetween`
- `MainAxisAlignment.spaceAround`
- `MainAxisAlignment.spaceEvenly`

Example:
```dart
Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Text("A"),
    Text("B"),
    Text("C"),
  ],
)
```

Items will be centered horizontally.

---

# 5. crossAxisAlignment (Controls Cross Axis Alignment)

### Common values:
- `CrossAxisAlignment.start`
- `CrossAxisAlignment.center`
- `CrossAxisAlignment.end`
- `CrossAxisAlignment.stretch`

Example:
```dart
Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Text("One"),
    Text("Two"),
  ],
)
```

Items will align to the **left** horizontally.

---

# 6. Row and Column Together (Common UI Pattern)

Often used together:

```dart
Column(
  children: [
    Row(
      children: [
        Text("Name:"),
        SizedBox(width: 10),
        Text("Rupesh"),
      ],
    ),
    SizedBox(height: 20),
    Row(
      children: [
        Text("Age:"),
        SizedBox(width: 10),
        Text("22"),
      ],
    )
  ],
)
```

---

# 7. Expanded Widget with Row & Column

`Expanded` makes a child take available space.

Example:
```dart
Row(
  children: [
    Expanded(child: Container(color: Colors.red, height: 50)),
    Expanded(child: Container(color: Colors.blue, height: 50)),
  ],
)
```

Both boxes share width equally.

---

# 8. Common Errors and Fixes

### Error: "RenderFlex overflowed"
Happens when content doesn’t fit in Row/Column.

Fix using:
- `Expanded`
- `Flexible`
- `SingleChildScrollView`
- `Wrap` (for Row overflow)

Example fix:
```dart
Row(
  children: [
    Expanded(child: Text("Very long text here..."))
  ],
)
```

---

# 9. When to Use Row vs Column

| Use Case | Widget |
|----------|---------|
| Arrange items horizontally | Row |
| Arrange items vertically | Column |
| Listing items top to bottom | Column |
| Buttons side-by-side | Row |
| Form or settings UI | Column |

---

# 10. Quick Summary

- **Row = Horizontal layout**  
- **Column = Vertical layout**  
- Use `mainAxisAlignment` to align on main axis  
- Use `crossAxisAlignment` for cross axis  
- Use `Expanded` to fill free space  
- Nest Rows inside Columns for complex UIs  

---

# End of Notes
