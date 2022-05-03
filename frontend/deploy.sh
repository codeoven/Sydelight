#!/bin/bash

# Android
flutter build appbundle
cd android && fastlane supply --aab ../build/app/outputs/bundle/release/app-release.aab --track internal