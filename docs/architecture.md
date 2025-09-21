# Architecture Overview

This document outlines the high-level architecture of the Sovereign iOS application.

## Core Principles

- **SwiftUI First:** The application is built using SwiftUI for the user interface.
- **MVVM Architecture:** We use the Model-View-ViewModel (MVVM) pattern to separate UI logic from business logic.
  - **Views:** SwiftUI views that are responsible for the layout and presentation of data.
  - **ViewModels:** Classes that hold the state for a view and handle user interactions.
  - **Models:** Data structures that represent the application's data.
- **Modularity:** Features are organized into modules to promote separation of concerns and reusability.

## Feature Breakdown

### 1. Authentication
- **Description:** Privacy-first authentication mechanism.
- **Components:**
  - `AuthView`: The main login/signup screen.
  - `AuthViewModel`: Handles the logic for authentication.
  - `SecureStorage`: A service for securely storing user credentials.

### 2. Secure Journal
- **Description:** An encrypted local journal for users.
- **Components:**
  - `JournalView`: The main view for journal entries.
  - `JournalViewModel`: Manages the state of the journal.
  - `EncryptionService`: A service for encrypting and decrypting journal entries.

### 3. Emission Spectrum & Frequency Modulator
- **Description:** Visualizations and animations.
- **Components:**
  - `SpectrumView`: A custom SwiftUI view for rendering the emission spectrum.
  - `ModulatorView`: A view for the frequency modulator animations.
  - These views will likely have their own ViewModels to handle the complex animation logic.

### 4. Microservice Integration
- **Description:** Integration with an external astrology and psychology microservice.
- **Components:**
  - `ApiService`: A network service layer for communicating with the external API.
  - `AstrologyService`: A specific service that uses `ApiService` to fetch astrology data.
  - `PsychologyService`: A specific service that uses `ApiService` to fetch psychology data.

## Directory Structure

- `Sovereign/`: The main application module.
  - `Views/`: SwiftUI views.
  - `ViewModels/`: ViewModels for the views.
  - `Models/`: Data models.
  - `Services/`: Services like `ApiService`, `EncryptionService`, etc.
  - `Assets.xcassets/`: Images, icons, and other assets.
- `SovereignTests/`: Unit and integration tests.
