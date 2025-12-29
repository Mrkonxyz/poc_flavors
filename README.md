# poc_flavors

A Proof of Concept (PoC) project demonstrating how to set up and manage flavors (build environments) in a Flutter application.

## Overview

This project showcases how to configure different environments (e.g., Development, Staging, Production) using Flutter flavors. This allows for separate configurations, app names, bundle IDs, and API endpoints for each environment.

## Getting Started

To run the application with a specific flavor, use the `--flavor` flag followed by the flavor name.

### Prerequisites

- Flutter SDK installed
- Android Studio / Xcode set up for mobile development

### Running the App

**Development**
```bash
flutter run --flavor dev -t lib/main_dev.dart
```

**Staging**
```bash
flutter run --flavor staging -t lib/main_staging.dart
```

**Production**
```bash
flutter run --flavor prod -t lib/main_prod.dart
```

## Project Structure

The project is structured to support multiple entry points:

- `lib/main_dev.dart`: Entry point for the Development environment.
- `lib/main_staging.dart`: Entry point for the Staging environment.
- `lib/main_prod.dart`: Entry point for the Production environment.
- `lib/app_config.dart`: Configuration class to handle environment-specific variables.

## Setup Guide

### Android Setup

1. **build.gradle**: `android/app/build.gradle` is configured with `productFlavors` to define `dev`, `staging`, and `prod`.
2. **AndroidManifest.xml**: The manifest uses placeholders (e.g., `${applicationName}`) that are dynamically replaced based on the build flavor.

### iOS Setup

1. **Schemes**: Custom schemes created in Xcode for each environment (Dev, Staging, Prod).
2. **Build Configurations**: Debug, Release, and Profile configurations duplicated for each flavor (e.g., `Debug-dev`, `Release-prod`).
3. **xcconfig**: Configuration files used to manage bundle identifiers and display names for each scheme.

## Resources

For more information on Flutter flavors:

- [Flutter Documentation: Build flavors](https://docs.flutter.dev/deployment/flavors)
- [Creating Flavors for Flutter](https://flutter.dev/docs/deployment/flavors)

