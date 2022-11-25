# One Signal Push notifications demo
A new flutter app for demonstrating Google maps demo with city search functionality.

# Setup 
To begin with setup <b> Set up your OneSignal Account then after login click on New App/Website </b>

<img src="https://github.com/MarvelApps-Flutter/one_signal_demo/blob/master/media/android/new_setup.png" height="60px">

 # For Google Android (FCM) Configuration 

 1. Set the <b> app name of your app</b> and <b> choose platform as android </b>

  <img src="https://github.com/MarvelApps-Flutter/one_signal_demo/blob/master/media/android/choose_platform.png" height="300px">

 2. <b> Click on Next: Configure Your Platform </b>
 3. Now add <b > Firebase Server key and Sender ID <b> from firebase project present under <b> Cloud Messaging tab section </b> and <b> click on SAVE and Continue </b>

  <img src="https://github.com/MarvelApps-Flutter/one_signal_demo/blob/master/media/android/firebase_key.png" height="300px">

 4. Select your <b> target SDK </b> and <b> click on SAVE and Continue </b>

 <img src="https://github.com/MarvelApps-Flutter/one_signal_demo/blob/master/media/android/choose_sdk.png" height="300px">

 5. <b> Install SDK <b> by following documentation or below are the steps for installing SDK for android.

 <img src="https://github.com/MarvelApps-Flutter/one_signal_demo/blob/master/media/android/install_sdk.png" height="300px">

 # Install SDK for Android 
 1. Add <b> maven repository with the specified url inside repositories </b> and also in <b> dependencies </b> add <b> one signal classpath </b> in <b> android/app/build.gradle </b>

 <img src="https://github.com/MarvelApps-Flutter/one_signal_demo/blob/master/media/android/buildscript.png" height="200px">

 2. Add apply plugin for oneSignal in <b> android/app/build.gradle </b>

  <img src="https://github.com/MarvelApps-Flutter/one_signal_demo/blob/master/media/android/plugin.png" height="100px">
  
 # For iOS

 1. Set the <b> app name of your app</b> and <b> choose platform as ios </b>

  <img src="https://github.com/MarvelApps-Flutter/one_signal_demo/blob/master/media/ios/choose_ios_plat.png" height="300px">

 2. <b> Click on Next: Configure Your Platform </b>
 3. Now add <b > .p12 certificate file <b> generated password <b>.

  <img src="https://github.com/MarvelApps-Flutter/one_signal_demo/blob/master/media/ios/certificate_section.png" height="300px">

 4.For the iOS version, there are some additional steps that need to be completed.
 4.1. The first one is to add an iOS Notification service extension for that open xcode and select File > New > Target

 <img src="https://github.com/MarvelApps-Flutter/one_signal_demo/blob/master/media/ios/select_target.png" height="300px">
 
 4.2. Then select Notification Service Extension and press Next.

<img src="https://github.com/MarvelApps-Flutter/one_signal_demo/blob/master/media/ios/choose_service.png" height="300px">

 4.3. Add the product name as OneSignalNotificationServiceExtension and change the language acc to your needs. The team account should be your account or your organization's account.

 <img src="https://github.com/MarvelApps-Flutter/one_signal_demo/blob/master/media/ios/product_name.png" height="300px">

 4.4. Click the finish at bottom right corner of the window then a pop up will display which will ask for activating "OneSignalNotificationServiceExtension" scheme? , simply click Activate.

# Video Preview
<img src="https://github.com/MarvelApps-Flutter/one_signal_demo/blob/master/media/gif/demo.gif" height="480px"></td>

# Android Screenshots

<table>
  <tr>
    <td><img src="https://github.com/MarvelApps-Flutter/one_signal_demo/blob/master/media/android/android1.png" height="480px"></td>
    <td><img src="https://github.com/MarvelApps-Flutter/one_signal_demo/blob/master/media/android/android2.png" height="480px"></td>
  </tr>
 </table>
</br>

# IOS Screenshots

<table>
  <tr>
    <td><img src="https://github.com/MarvelApps-Flutter/one_signal_demo/blob/master/media/ios/ios1.png" height="480px"></td>
    <td><img src="https://github.com/MarvelApps-Flutter/one_signal_demo/blob/master/media/ios/ios2.png" height="480px"></td>
  </tr>
 </table>

 