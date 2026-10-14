# Football Nav Demo

**BottomNavigationBar** is a Flutter widget that places a row of tabs at the bottom of the screen so users can switch between an app's main sections with one tap.

## Screenshot


## About this demo
A small football league app built for my in-class widget presentation. It has three tabs:
- **Home**: latest match results
- **Standings**: a league table with Arsenal, Man United and Chelsea
- **Profile**: a simple user profile

All stats are hardcoded sample data.

## How to run
1. Clone the repo: `git clone <your-repo-url>`
2. `cd football_nav_demo`
3. `flutter pub get`
4. `flutter run`

## The three attributes

### 1. `currentIndex`
- **Default:** `0` (the first tab is selected)
- **What it changes:** which tab looks selected. It must match the index that picks the page shown in `body`.
- **Why change it:** to keep the highlighted tab and the visible screen in sync, or to open the app on a different tab.

### 2. `selectedItemColor`
- **Default:** the theme's primary color
- **What it changes:** the color of the active tab's icon and label. In the demo I changed it from deep purple to red.
- **Why change it:** to match a brand's colors and make the active tab easy to spot.

### 3. `type`
- **Default:** `fixed` when there are 3 items or fewer, `shifting` when there are more
- **What it changes:** `fixed` shows all labels at all times. `shifting` shows only the selected label and animates the change.
- **Why change it:** to decide whether to keep every label visible or save space when there are many tabs.

## Sources
Flutter docs: https://api.flutter.dev/flutter/material/BottomNavigationBar-class.html