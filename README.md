# Bahadur Khail Welfare Committee — Final Online App

Firebase-connected Android app. Salary module intentionally omitted.

Admin: wasifsher00788@gmail.com

Features: login, members, monthly fund, welfare assistance, announcements, summary, online Firestore data, admin-only write/delete, read-only users.

Firebase project configuration is included in `app/google-services.json` from the organization's Firebase project. Package: `com.bahadurkhail.welfare`.

## Build
Open this folder in Android Studio, sync Gradle, then Build > Build APK(s).

## Security
Deploy `firebase/firestore.rules` in Firebase Console. The server-side rules make all authenticated users read-only and only the Admin email able to create/update/delete.

Do not share passwords or OTPs. Create additional users through Firebase Authentication.
