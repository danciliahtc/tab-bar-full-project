# UIKit Tab Bar Navigation Practice with Job Board, Calculator, and Countries Apps in iOS

This repository contains three projects: a **Job Board App**, a **Calculator App**, and a **Countries App**. These apps were created as part of practice to demonstrate navigation between different views using UIKit, specifically utilizing `UITabBarController` to switch between the apps.

## Overview

- **Job Board App**: A simple job board where users can log in with predefined credentials and view a list of job postings.
- **Calculator App**: A basic calculator that supports addition, subtraction, multiplication, and division.
- **Countries App**: Displays country data, including capital, currency, language, and region in a collection view.

These apps were designed to practice navigating between different views using UIKit and `UITabBarController`. Each app is a separate feature within the tab bar, demonstrating the versatility of navigation in iOS development.

## Features

- **UITabBarController**: Navigation between the Job Board, Calculator, and Countries apps using a tab bar.
- **Login and Navigation**: The Job Board app includes a login screen for user authentication and a job board screen to display job listings.
- **Basic Calculator Operations**: The Calculator app includes buttons for performing basic arithmetic operations.
- **Country Data Display**: The Countries app reads data from a local JSON file and displays country information in a collection view.

## Files

- `LoginViewController.swift`: Handles user login and navigation to the job board screen.
- `JobBoardViewController.swift`: Displays the list of job postings in a table view.
- `JobBoardTableViewCell.swift`: Custom table view cell that displays job post details.
- `JobBoardPost.swift`: Data model for job postings.
- `CalculatorViewController.swift`: Manages the calculator's user interface and logic for number and operation button presses.
- `LocalDataManager.swift`: A utility class for reading local JSON data.
- `Country.swift`, `CountryCell.swift`, `CountriesViewController.swift`: Handles displaying country data in a collection view.

## To Run the App

1. Clone the repository.
2. Open the `.xcodeproj` file in Xcode.
3. Build and run the app on a simulator or device.
4. Use the tab bar to switch between the Job Board, Calculator, and Countries views.

## Requirements

- Xcode 12.0 or later
- Swift 5.0 or later

## License

This project is open-source and available under the [MIT License](LICENSE).

---
