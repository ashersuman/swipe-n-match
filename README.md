# swipe_n_watch

![build](https://github.com/ashersuman/swipe-n-match/actions/workflows/main.yml/badge.svg)
![Made with Flutter](https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white)

Flutter frontend for SwipeNWatch.
This codebase ships ios and android app.

## Folder Structure
- `assets` : To store static contents
  - `fonts`
  - `images`
  - `logo`
  - `videos`
- `cloud_functions` : Cloud functions used in the app
- `screens` : Actual layout of the UI for the entire application. 
  - `flashscreen`
  - `onboarding` : Add login/signup pages here
  - `xxx` : Create folder to add home screen and other screens
  - `xxx` : screens that are not important (eg: privacy policy, about us etc.)
- `providers` : Supposed to hold all the interactions that transact the data from outside the app
- `utils` : Supposed to hold app logic or business logic of the entire application.
- `widgets` : Widgets/Layout used in app. Supposed to hold all the static widgets or the widgets that are used multiple times in the application.
- `models` : Models of the data usually sourced from the servers, users or external APIs.
- `theme` : Supposed to hold app theme (color scheme), fonts config etc. 

## Contributing Guide

## Design Guide

## Testing
**Please provide _unit tests_ as you go**.
Flutter unit test [guide](https://docs.flutter.dev/cookbook/testing/unit/introduction)

## New to Flutter ? Start here 👇

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
