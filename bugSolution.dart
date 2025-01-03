```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);

      //Check for the existence of keys before accessing them
      if (jsonData.containsKey('someKey') && jsonData['someKey'] is Map && jsonData['someKey'].containsKey('nestedKey')) {
        final value = jsonData['someKey']['nestedKey']; 
        print('Value: $value'); //Process the data 
      } else {
        print('JSON structure does not match expectations.');
      }
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
  }
}
```