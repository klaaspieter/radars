https://openradar.appspot.com/radar?id=4986673305747456

Summary:
The first time Face ID authentication is requested using the LocalAuthentication APIs a permission prompt appears. This is inconsistent with Touch ID and goes against a HIG recommendation:

> If biometric authentication is enabled at the system level, just assume the user wants to use it.

Following this advice, apps that show Face ID authentication on app launch will get confusing behavior because on first launch the user is first presented with a permission dialog.

Steps to Reproduce:
1. Call context.evaluatePolicy with deviceOwnerAuthenticationWithBiometrics

Expected Results:
The user is asked to authenticate with Face ID

Actual Results:
The user is asked whether they want to allow “App Name”  to use Face ID.

Version:
11

Notes: