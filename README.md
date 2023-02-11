# Hybrid, Functional, and Nice Designed Chat App: Flutter Social Chat

## Sponsored by Stream!
If you want to read an article about this project, there is an aritcle that is written by me and sponsored by Stream. Here is the link: https://gstrm.io/sahinefe

<img width="500" height="250" alt="r1" src="https://user-images.githubusercontent.com/67283777/214430512-e987c9ba-f6e6-4b43-abe9-efe0c375ef7c.png"> <img width="500" height="250" alt="2" src="https://user-images.githubusercontent.com/67283777/214430646-a7165df6-467b-4ecf-b9ed-14f3daa126c8.jpeg">

## Distinctive features gathered in a Single App
* BLoC for state management

* DDD Architecture

* Navigator 2.0 (GoRouter)

* Dependency Injection

* 2 Different, popular services (Firebase & GetStream)

* 2 Different presentations of the GetStream usage (Prepared UI which is coming from the GetStream Package and Manuel UI that's combined with the core package)

* Localization from official Flutter docs

* Official Camera Plugin from the Flutter itself

* Local Storage (Hydrated Bloc)

* Internet Connection Checker

## Video Tutorial (YouTube)

You can also watch the playlist which is related to Flutter Social Chat via YouTube: https://www.youtube.com/watch?v=r9MtCK33J78&list=PL3PvZdDvJcMIixstKkuvLWQleqJ1VhLrf

![maxresdefault](https://user-images.githubusercontent.com/67283777/218279967-7a51ba48-0434-44c4-afe7-b79dbb4ab880.jpg)

## Images from the App

<img width="327" alt="1" src="https://user-images.githubusercontent.com/67283777/210593207-3976e7da-d1f9-4f97-8e9d-4daf42dd216b.png"> <img width="319" alt="2" src="https://user-images.githubusercontent.com/67283777/210593216-6750ef71-d24c-4d77-9714-7021459ffa1b.png">

<img width="311" alt="3" src="https://user-images.githubusercontent.com/67283777/210593220-724ab0ed-a1f4-421c-a5a6-46bfe47e17fa.png"> <img width="334" alt="4" src="https://user-images.githubusercontent.com/67283777/210593222-12448d4d-b30c-4af7-a77e-87fb6dec5a5e.png">

<img width="314" alt="5" src="https://user-images.githubusercontent.com/67283777/210593226-4414f1bc-a790-4640-b28e-ace036a5c1b1.png"> <img width="313" alt="6" src="https://user-images.githubusercontent.com/67283777/210593229-d76cd7f4-2d14-4ce9-9604-66d02b4dbc18.png">

<img width="317" alt="8" src="https://user-images.githubusercontent.com/67283777/210593239-b6e5737e-74fd-40a6-a2c6-f1cde92a376c.png">  <img width="308" alt="9" src="https://user-images.githubusercontent.com/67283777/210593242-6d7cf153-1569-4098-912f-e8b14037ae12.png"> 

<img width="317" alt="20" src="https://user-images.githubusercontent.com/67283777/210603313-485f5ff6-8b6d-4439-99ef-b9128abd0606.png"><img width="311" alt="11" src="https://user-images.githubusercontent.com/67283777/210593807-3e11659e-3fb4-47dd-a993-b96e5e979bfe.png">

<img width="319" alt="17" src="https://user-images.githubusercontent.com/67283777/210604032-9d14a7bc-04b6-4f75-b8cf-b9f45524f1b3.jpeg"> <img width="308" alt="15" src="https://user-images.githubusercontent.com/67283777/210593841-9ef82be7-1fac-4ff0-8f56-00639c35e443.jpeg"> 

<img width="319" alt="16" src="https://user-images.githubusercontent.com/67283777/210604037-a968b11a-8289-4896-9ac8-cb9816e2055e.jpeg"> <img width="319" alt="16" src="https://user-images.githubusercontent.com/67283777/210604649-55a25115-8ada-4a3a-8659-ece5b9247cf3.jpeg">

<img width="319" alt="21" src="https://user-images.githubusercontent.com/67283777/210604761-58ae8e56-babb-4d55-a863-76281ed6dda3.jpeg"> <img width="308" alt="13" src="https://user-images.githubusercontent.com/67283777/210593830-87f5bc01-5dd8-4808-9c06-d826c5e5df19.jpeg"> 

<img width="308" alt="12" src="https://user-images.githubusercontent.com/67283777/210593821-412eaa85-f221-4b14-a10e-2cb24e5c14a8.jpeg"> <img width="309" alt="7" src="https://user-images.githubusercontent.com/67283777/210593236-0348a0ab-e879-4be2-a8df-5a2582de0cc0.png">


## Before Beginning: READ BEFORE USING!

-- Since the firebase project keys are private, I do not share them generally, but for the tutorial purpose, I share "firebase.options.dart" file as an example for you. If you want to use this application, first you must complete the necessary setups for the "GetStream" and "Firebase". You can not run the application directly If you fork, you will need appKey and devtoken for the "GetStream" section, and "firebase_options.dart" file that is coming from the Firebase itself.

* For the GetStream, you can register for free: https://getstream.io/try-for-free/

* Also to create devToken, you can visit the link: https://getstream.io/chat/docs/flutter-dart/token_generator/?language=dart

* For the "Firebase", you can also register for free, and then complete necessary steps. After that, you will need to create a firebase project to use in this project. To register, visit: https://firebase.google.com

-- Also, you should know, sign-in section of this application is coming from my other open source project that is actually "phone_number_sign_in_cubit" project.

You can also find the related project here: https://github.com/alperefesahin/phone_number_sign_in_cubit

## Testing
-- For this open-source app, the integration, widget, unit tests will exist coming soon...

## Packages
You should specify the version of the related packages below.

```dart
dependencies:
  flutter:
    sdk: flutter
  flutter_localizations:
    sdk: flutter
  auto_size_text: 
  intl_phone_number_input: 
  go_router: 
  wave: 
  pin_code_fields: 
  bot_toast: 
  progress_indicators: 
  flutter_expandable_fab: 
  cupertino_icons: 
  image_picker: 
  camera:
  flutter_svg: 
  animated_text_kit: 
  rounded_loading_button: 
  cached_network_image: 
  awesome_icons: 
  date_format: 
  page_transition: 
  permission_handler: 
  image: 
  path_provider: 
  connectivity_plus: 

  flutter_bloc: 
  hydrated_bloc: 
  freezed_annotation: 
  json_annotation: 
  injectable: 
  get_it: 
  fpdart: 
  uuid: 

  firebase_core: 
  firebase_auth: 
  firebase_storage: 
  cloud_firestore: 

  stream_chat_flutter: 
  
dev_dependencies:
  flutter_test:
    sdk: flutter
  lint: 
  build_runner: 
  freezed: 
  injectable_generator: 
  json_serializable:
```
