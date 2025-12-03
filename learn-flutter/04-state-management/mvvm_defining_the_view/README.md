# mvvm_defining_the_view

This Flutter application demonstrates **state management using the MVVM (Model–View–ViewModel) pattern**.  
It shows how to separate concerns into **Model**, **ViewModel**, and **View**, while integrating with a remote API (JSONPlaceholder).

## Structure

- **MVVMApp**  

  Root widget with `MaterialApp`.  

  Sets the home to `CounterPage`.  

- **CounterPage (View)**  

  A `StatelessWidget` that displays the counter value.  

  - Uses `ListenableBuilder` to reactively rebuild when the `CounterViewModel` changes.  
  
  - Shows error messages if initialization or updates fail.  
  - Displays a loading indicator until the counter is initialized.  
  - Provides buttons to increment the counter.  

- **CounterData (DTO)**  

  Encapsulates the counter state.  

  - `fromJson` → builds from API response.  
  - `toJson` → serializes to JSON for updates.  

- **CounterModel (Repository / Model)**  

  Handles persistence and API communication.  

  - `loadCountFromServer()` → fetches counter value from JSONPlaceholder (`/posts/1`).  

  - `updateCountOnServer()` → simulates updating the counter via PUT request.  
  - Maintains `_currentCount` in memory since JSONPlaceholder does not persist updates.  

- **CounterViewModel (Business Logic)**  

  Extends `ChangeNotifier` to expose reactive state.  

  - `init()` → initializes counter from server. 
 
  - `increment()` → updates counter both locally and via API.  
  - Provides `count` and `errorMessage` to the View.  

## Key Points

- **MVVM pattern** cleanly separates responsibilities:  
  
  - **Model** → data and persistence.  
  
  - **ViewModel** → business logic and reactive state.  
  - **View** → UI presentation.  

- **ListenableBuilder** efficiently rebuilds only when the ViewModel notifies changes.  

- **Error handling** ensures user feedback when API calls fail.  

- **JSONPlaceholder** is used as a mock backend for demonstration purposes.  

## Example Workflow

1. Launch the app → `CounterPage` initializes the counter by calling `viewModel.init()`.  

2. If successful → counter value is displayed.  

3. Tap **Increment button** or **FloatingActionButton** → counter increases by 1.  

4. The ViewModel updates the Model (via API call) and notifies the View.  

5. If API fails → error message is shown in red text.  

> Made with '\u{2665}' (♥) by Jesús Domínguez [@bluefeatherdev](https://github.com/bluefeatherdev)
