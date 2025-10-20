# Midterm Project - 2025 F1 Drivers

CIS 137
Kelvin Chao
19/10/2025

## Overview

This SwiftUI app displays a list of Formula 1 drivers and their teams using local JSON data. Each driver entry includes a name, team info, number, and image. Tapping on a driver navigates to a detailed page with a styled layout and additional information.

## Features

- Loads driver data from a local `Data.json` file
- Displays a list of F1 drivers with images and names
- Tapping a driver navigates to a detail view
- Detail view includes:
  - Team icon
  - Driver number
  - Team name
  - Driver photo
  - Description text
- Theming: Each driver has a team color that styles the background and UI elements

## Folder Structure

Midterm_KelvinChao
├── Assets.xcassets/
│ └── ...images
├── ContentView.swift
├── Data.json
├── Helper.swift
├── ThemeHelper.swift
├── Subject.swift
├── Midterm_KelvinChaoApp.swift

## Getting Started

Open Terminal and run:

```
git clone https://github.com/your-username/Midterm_KelvinChao.git
cd Midterm_KelvinChao
```

Open the project on xcode and run
