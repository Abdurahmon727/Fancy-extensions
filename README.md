## ✨ Dart Fancy Extensions Package

This package provides a collection of convenient Dart extensions for common operations, enhancing readability and improving code maintainability.

**Features:**

* **`ifNullOrEmpty`**: Checks if a string is null or empty.
  ```dart
  String? name = null;
  if (name.ifNullOrEmpty('')) {
    print('Name is empty.');
  }
  ```
* **`ifReturn`**: Executes a function and returns its result only if a condition is true.
  ```dart
  int age = 25;
  int? adultAge = age.ifReturn(age >= 18, null);
  print(adultAge); // Output: 25
  ```
* **`let`**: Introduces a temporary variable within a code block, similar to let in other languages.
  ```dart
  String fullName = 'John Doe';
  List<String> parts = fullName.split(' ').let((parts) => parts.reversed.toList());
  print(parts); // Output: ['Doe', 'John']
  ```
* **`elementAtOrNull`**: Safely retrieves an element from a list at a specific index, returning null if the index is out of bounds.
  ```dart
  List<int> numbers = [1, 2, 3];
  int thirdNumber = numbers.elementAtOrNull(2);
  print(thirdNumber); // Output: 3
  ```
* **`capitalizeFirstLetter`**: Capitalizes the first letter of a string.
  ```dart
  String greeting = 'hello';
  String capitalizedGreeting = greeting.capitalizeFirstLetter;
  print(capitalizedGreeting); // Output: Hello
  ```

**🎖Installation:**

1. Add the following dependency to your `pubspec.yaml` file:

   ```yaml
   dependencies:
     fancy_extensions: ^0.0.3
   ```

   Replace `fancy_extensions` with the actual name of your package.

2. Run `pub get` to install the package.

**🎮Usage:**

Import the package in your Dart files:

```dart
import 'package:fancy_extensions/fancy_extensions.dart';
```

Then, use the extensions on your variables and data structures as demonstrated in the examples above.

**🔥Contributing:**

We welcome contributions to this package! Please feel free to open issues or pull requests.

**⭐️License:**

This package is licensed under BSD 3-Clause License: [BSD 3-Clause License](https://github.com/Abdurahmon727/fancy_extensions?tab=BSD-3-Clause-1-ov-file#readme).
