# Testing Strategy

This document outlines the testing strategy for the Sovereign iOS project. Our goal is to maintain a high level of code quality and stability through a comprehensive testing approach.

## Test Levels

We employ several levels of testing:

### 1. Unit Tests
- **Location:** `SovereignTests/`
- **Purpose:** To test individual components, such as ViewModels, services, and utility functions, in isolation.
- **Coverage Expectation:** All business logic, especially in ViewModels and services, should be covered by unit tests.

### 2. UI Tests (Future)
- **Location:** `SovereignUITests/` (to be created)
- **Purpose:** To test user flows and UI interactions from the user's perspective.
- **Coverage Expectation:** All critical user paths, such as onboarding, login, and core feature interactions, should be covered by UI tests.

## Running Tests

### Locally
You can run all tests directly within Xcode:
1.  Open `ios/Sovereign.xcodeproj`.
2.  Select the `Sovereign` scheme and a simulator.
3.  Press `Cmd+U` or navigate to `Product > Test` from the menu.

### Continuous Integration (CI)
All tests are automatically run on every push and pull request via our GitHub Actions workflow. The workflow is defined in `.github/workflows/ios-build.yml`.

- **Test Results:** You can view the results of the CI test run in the "Actions" tab of the repository.
- **Troubleshooting Failed Tests:** If the CI build fails, check the logs for the `Build and Test Application` step to see the detailed output from `xcodebuild`.

## Contribution Guidelines
When contributing new features or fixing bugs, please ensure that you:
- Add new unit tests to cover your changes.
- Ensure all existing tests continue to pass.
