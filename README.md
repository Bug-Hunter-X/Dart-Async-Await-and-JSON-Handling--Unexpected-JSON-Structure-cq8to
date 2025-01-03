# Dart Async/Await and JSON Handling: Unexpected JSON Structure

This repository demonstrates a common error in Dart applications involving asynchronous operations (using `async`/`await`) and JSON handling. The code fetches JSON data from a remote API.  It shows how an unexpected JSON structure can cause a runtime error if not handled gracefully.

The `bug.dart` file contains the buggy code. The `bugSolution.dart` file provides a more robust solution that includes comprehensive error handling.

**Problem:** The original code doesn't properly handle cases where the JSON response might not match the expected structure.  Accessing nested keys (`jsonData['someKey']['nestedKey']`) without checking for their existence will throw an error if the structure is different than anticipated.

**Solution:** The solution demonstrates the correct method to handle these situations by checking if the keys exist before accessing them, improving the code's resilience against unexpected data.