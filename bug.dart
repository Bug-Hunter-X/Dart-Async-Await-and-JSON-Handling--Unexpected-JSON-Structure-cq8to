```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Process the JSON response
      final jsonData = jsonDecode(response.body);
      // Access data - this line might throw an error if the JSON structure is unexpected
      final value = jsonData['someKey']['nestedKey']; 
    } else {
      // Handle non-200 status codes
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exceptions, including JSON decoding errors and network issues
    print('Error: $e');
    //Consider rethrowing or handling the exception appropriately based on your application's requirements
    rethrow; //This will propagate the error to the calling function.
  }
}
```