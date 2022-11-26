# One Signal Push notifications demo
A new flutter app for demonstrating <b>One Signal Push notifications for android and iOS</b>. OneSignal provide <b>free email, sms, push notifications </b> and <b> in-app message service</b> for mobile apps.

OneSignal and Firebase Comparison Chart
<table>
  <tr>
   <th>
   OneSignal
   </th>
    <th>
   Firebase(FCM)
   </th>
  </tr>
  <tr>
  <td>
  No need to setup Android channel for notification
  </td>
  </tr>
  <tr>
  <td>
  Need to setup Android channel for notification
  </td>
  </tr>
</table>

# Setup 
To begin with setup <b> Set up your OneSignal Account then after login click on New App/Website </b>

<img src="https://github.com/MarvelApps-Flutter/one_signal_demo/blob/master/media/android/new_setup.png" height="60px">

 # For Google Android (FCM) Configuration 

1.&nbsp;Set the <b> app name of your app</b> and <b> choose platform as android </b>

  <img src="https://github.com/MarvelApps-Flutter/one_signal_demo/blob/master/media/android/choose_platform.png" height="300px">

2.&nbsp;<b> Click on Next: Configure Your Platform </b>
3.&nbsp;Now add <b > Firebase Server key and Sender ID </b> from firebase project present under <b> Cloud Messaging tab section </b> and <b> click on SAVE and Continue </b>

  <img src="https://github.com/MarvelApps-Flutter/one_signal_demo/blob/master/media/android/firebase_key.png" height="300px">

4.&nbsp;Select your <b> target SDK </b> and <b> click on SAVE and Continue </b>

 <img src="https://github.com/MarvelApps-Flutter/one_signal_demo/blob/master/media/android/choose_sdk.png" height="300px">

5.&nbsp;<b>Install SDK </b> by following documentation or below are the steps for installing SDK for android.

 <img src="https://github.com/MarvelApps-Flutter/one_signal_demo/blob/master/media/android/install_sdk.png" height="300px">

 # Install SDK for Android 
1.&nbsp;Add <b> maven repository with the specified url inside repositories </b> and also in <b> dependencies </b> add <b> one signal classpath </b> in <b> android/app/build.gradle </b>

<img src="https://github.com/MarvelApps-Flutter/one_signal_demo/blob/master/media/android/buildscript.png" height="200px">

2.&nbsp;Add apply plugin for oneSignal in <b> android/app/build.gradle </b>

<img src="https://github.com/MarvelApps-Flutter/one_signal_demo/blob/master/media/android/plugin.png" height="100px">
  
 # For iOS

1.&nbsp;Set the <b> app name of your app</b> and <b> choose platform as ios </b>

  <img src="https://github.com/MarvelApps-Flutter/one_signal_demo/blob/master/media/ios/choose_ios_plat.png" height="300px">

2.<b> Click on Next: Configure Your Platform </b><br>
3.&nbsp;Now add <b > .p12 certificate file </b> and<b> generated password </b>.

  <img src="https://github.com/MarvelApps-Flutter/one_signal_demo/blob/master/media/ios/certificate_section.png" height="300px">

4.&nbsp;<b>For generating .p12 certificate ,follow below steps</b> <br>
4.1. Login to your <b style="background-color:tomato;">Paid Apple Developer Account </b> and navigate to <b>Certificates, Identifiers & Profiles</b> -> <b> Identifiers</b> and select the <b> Blue + button </b>.

<img src="https://github.com/MarvelApps-Flutter/one_signal_demo/blob/master/media/ios/identifier_section.png" height="130px">

4.2. Select <b> App IDs </b> and Continue

<img src="https://github.com/MarvelApps-Flutter/one_signal_demo/blob/master/media/ios/register_identifier.png" height="200px">

4.3. Register a new <b> identifier </b>

<img src="https://github.com/MarvelApps-Flutter/one_signal_demo/blob/master/media/ios/select_identifier_type.png" height="200px">

4.4. Provide a <b> "Description"</b> and your Explicit <b> "Bundle ID"</b>. This must be the same as the <b>"Bundle Identifier"</b> you set for your project in Xcode.

<img src="https://github.com/MarvelApps-Flutter/one_signal_demo/blob/master/media/ios/bundle_id.png" height="200px">

4.5. Enable <b>Push notification capability</b>.

<img src="https://github.com/MarvelApps-Flutter/one_signal_demo/blob/master/media/ios/select_push_capability.png" height="70px">

4.6. Now go to <b>certificates</b> and create a new certificate by clicking the blue + (plus) button.

<img src="https://github.com/MarvelApps-Flutter/one_signal_demo/blob/master/media/ios/add_certificate.png" height="100px">

4.7. Under <b>Service</b>, select <b>Apple Push Notification service SSL </b>(Sandbox & Production, certificate will be applicable to both Sandbox and Production environments, so you do not need a separate key for each one) and click Continue

<img src="https://github.com/MarvelApps-Flutter/one_signal_demo/blob/master/media/ios/select_services.png" height="250px">

4.8. Choose your <b>App ID with matching Bundle ID </b> from the App ID pop-up menu.

<img src="https://github.com/MarvelApps-Flutter/one_signal_demo/blob/master/media/ios/select_appid.png" height="200px">

4.9. Click <b> Choose File...</b>, select the <b> CertSigningRequest</b> file or you can generate csr file using below steps.

<img src="https://github.com/MarvelApps-Flutter/one_signal_demo/blob/master/media/ios/choose_cer.png" height="200px">

5.<b> How to generate CertSigningRequest file </b><br>
5.1.&nbsp;Open Keychain Access app on your macOS system. 

<img src="https://github.com/MarvelApps-Flutter/one_signal_demo/blob/master/media/ios/search_keychain.png" height="70px">

5.2.&nbsp;Select <b>Keychain Access > Certificate Assistant > Request a Certificate From a Certificate Authority...</b>

<img src="https://github.com/MarvelApps-Flutter/one_signal_demo/blob/master/media/ios/select_cert_assistant.png" height="200px">

5.3.&nbsp;Next, select the <b>Saved to disk</b> option and enter your information in the required fields. Then click <b>Continue</b>.

<img src="https://github.com/MarvelApps-Flutter/one_signal_demo/blob/master/media/ios/save_to_disk.png" height="300px">

5.4.&nbsp;This creates a certification request file that will be used later. 

<img src="https://github.com/MarvelApps-Flutter/one_signal_demo/blob/master/media/ios/save_csr.png" height="200px">

5.5.&nbsp;Certificate which we saved in previous step, upload that while creating certificate in step 4.9 then click continue

<img src="https://github.com/MarvelApps-Flutter/one_signal_demo/blob/master/media/ios/file_choosen.png" height="200px">

5.6.&nbsp;Finally download file

5.7.&nbsp;Open the .cer file you downloaded in the last step by double-clicking on it in Finder.

5.8.&nbsp;After a few seconds, the Keychain Access program should open. Select <b>Login > My Certificates</b>, then right-click on your Apple Push Services key in the list and select <b>Export "Apple Push Services..."</b>.

<img src="https://github.com/MarvelApps-Flutter/one_signal_demo/blob/master/media/ios/csr_cert.png" height="200px">

5.9.&nbsp;Give the file a unique name using the .p12 extension, and click Save. You will have an option to protect the file with a password. If you add a password, you need to enter this same password on OneSignal.


6.&nbsp;Upload Your Push Certificate to OneSignal, select the .p12 file you exported along with a password and click save.

7.&nbsp;Select your <b> target SDK </b> and <b> click on SAVE and Continue </b>

 <img src="https://github.com/MarvelApps-Flutter/one_signal_demo/blob/master/media/android/choose_sdk.png" height="300px">

8.&nbsp;<b>Install SDK </b> by following documentation or below are the steps for installing SDK for iOS.

 <img src="https://github.com/MarvelApps-Flutter/one_signal_demo/blob/master/media/ios/ios_install_sdk.png" height="300px">

9.&nbsp;<b>For the iOS version, there are some additional steps that need to be completed for installing SDK</b>

9.1. The first one is to add an <b> iOS Notification service extension</b> for that open xcode and <b>select File > New > Target</b>

<img src="https://github.com/MarvelApps-Flutter/one_signal_demo/blob/master/media/ios/select_target.png" height="300px">
 
9.2. Then select <b> Notification Service Extension </b> and press Next.

<img src="https://github.com/MarvelApps-Flutter/one_signal_demo/blob/master/media/ios/choose_service.png" height="300px">

9.3. Add the product name as <b> OneSignalNotificationServiceExtension</b> and change the language acc to your needs. The team account should be your account or your organization's account.

<img src="https://github.com/MarvelApps-Flutter/one_signal_demo/blob/master/media/ios/product_name.png" height="300px">

9.4. Click the finish at bottom right corner of the window then a pop up will display which will ask for <b> activating "OneSignalNotificationServiceExtension" scheme?</b> , simply click Activate.

<img src="https://github.com/MarvelApps-Flutter/one_signal_demo/blob/master/media/ios/popup.png" height="300px">

9.5 Now, open the Xcode project settings and select the <b> OneSignalNotificationServiceExtension target</b>.Under the Deployment info section on this page, select iOS 11.

<img src="https://github.com/MarvelApps-Flutter/one_signal_demo/blob/master/media/ios/one_signal_ios_deploy.png" height="300px">

9.6 Now, close the Xcode project and go back to your Flutter development IDE. In the /ios directory of your project, open the <b>Podfile</b>, and add the following lines outside of the main target (they should be at the same level as your main target):

<img src="https://github.com/MarvelApps-Flutter/one_signal_demo/blob/master/media/ios/podfile_setup.png" height="300px">

9.7. Now you need to enable push capability for iOS apps.Open your ios folder in Xcode. In the main app target, select <b>Signing & Capabilities </b> -> click + and then search for <b> "Push Notifications"</b>

<img src="https://github.com/MarvelApps-Flutter/one_signal_demo/blob/master/media/ios/select_push_noti.png" height="300px">

9.8. Next, enable <b> Background Modes </b> and <b> check Remote Notifications</b>.

<img src="https://github.com/MarvelApps-Flutter/one_signal_demo/blob/master/media/ios/select_background_mode.png" height="300px">
<img src="https://github.com/MarvelApps-Flutter/one_signal_demo/blob/master/media/ios/select_remote_noti.png" height="300px">

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

 