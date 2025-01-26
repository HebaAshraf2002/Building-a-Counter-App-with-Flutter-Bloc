# Building-a-Counter-App-with-Flutter-Bloc
# Overview

  This Flutter application demonstrates the use of the Cubit state management pattern from the flutter_bloc package. The app is a simple counter that allows users to increment or decrement a value, with 
  additional features like alert dialogs and notifications based on specific conditions. The primary focus is on showcasing the simplicity and efficiency of the Cubit approach to state management.

# What This Code Does

## 1. Increment/Decrement Counter:

    - Users can increment or decrement the counter value by pressing the respective floating action buttons.
    
    - The counter value is displayed at the center of the screen.

## 2. Conditional Alerts:

    - If the counter value drops below 0, an alert dialog is shown to warn the user.
    
    - If the counter value reaches 10 or -10, a snackbar notification appears indicating the limit has been reached.

## 3. State Management:

    - The app uses the Cubit pattern to manage the counter state efficiently and rebuild the UI whenever the state changes.

# How the Code Works ?

## 1.Folder Structure

- Cubit: Contains the CounterCubit class and associated state logic.

- Views: Contains the CounterView widget for the user interface.

## 2. Key Components

    ### 1. CounterCubit
    
    - State: The counter's value is stored as an integer, which is the initial state set to 0.
    
    ### 2. Methods:
    
    - increment: Increases the counter value by 1 and emits the new state.
    
    - decrement: Decreases the counter value by 1 and emits the new state.
    
    ### 3. CounterView
    
    1. UI:
    
    - Displays the counter value in the center of the screen.
    
    - Provides two floating action buttons for incrementing and decrementing the counter.
    
    2. Logic:
    
    - BlocConsumer is used to listen to state changes and rebuild the UI.
    
    3. Listener:
    
    - Shows an alert dialog if the counter value is negative.
    
    - Displays a snackbar if the counter reaches 10 or -10.
    
    4. Builder: Updates the counter value in the UI whenever the state changes.

## 3.Main App Flow

- Entry Point: The main function initializes the app and wraps it with a BlocProvider to provide the CounterCubit to the widget tree.

### 1. Cubit Management:

- The CounterCubit is responsible for managing the counter value and updating the state.

### 2. UI Updates:

- The CounterView listens for state changes from the CounterCubit and updates the UI accordingly.

### 3. User Interactions:

- Increment and decrement buttons trigger the increment and decrement methods in the CounterCubit.

- Alerts and notifications provide feedback to the user based on specific conditions.
