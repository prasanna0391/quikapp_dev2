import 'dart:convert';

// Versioning
const String versionName = String.fromEnvironment('VERSION_NAME', defaultValue: '1.0.0');
const String versionCode = String.fromEnvironment('VERSION_CODE', defaultValue: '1');

// Keystore config
const String keyStoreUrl = String.fromEnvironment('KEY_STORE');
const String cmKeystorePassword = String.fromEnvironment('CM_KEYSTORE_PASSWORD');
const String cmKeyAlias = String.fromEnvironment('CM_KEY_ALIAS');
const String cmKeyPassword = String.fromEnvironment('CM_KEY_PASSWORD');

// App info
const String appName = String.fromEnvironment('APP_NAME');
const String orgName = String.fromEnvironment('ORG_NAME');
const String packageName = String.fromEnvironment('PKG_NAME');

// Firebase config
const String firebaseConfigAndroid = String.fromEnvironment('firebase_config_android');
const String firebaseConfigIos = String.fromEnvironment('firebase_config_ios');
const String apnsKeyId = String.fromEnvironment('APNS_KEY_ID');
const String apnsTeamId = String.fromEnvironment('APNS_TEAM_ID');
const String apnsAuthKeyUrl = String.fromEnvironment('APNS_AUTH_KEY_URL');

// General
const String webUrl = String.fromEnvironment('WEB_URL');
const String emailId = String.fromEnvironment('EMAIL_ID');

// Splash screen
const bool isSplashEnabled = bool.fromEnvironment('IS_SPLASH');
const String splashBgUrl = String.fromEnvironment('SPLASH_BG');
const String splashUrl = String.fromEnvironment('SPLASH');
const String splashTagline = String.fromEnvironment('SPLASH_TAGLINE');
const String splashTaglineColor = String.fromEnvironment('SPLASH_TAGLINE_COLOR');
const String splashAnimation = String.fromEnvironment('SPLASH_ANIMATION');
const int splashDuration = int.fromEnvironment('SPLASH_DURATION');
const String splashBgColor = String.fromEnvironment('SPLASH_BG_COLOR');

// Pull down
const bool isPullDown = bool.fromEnvironment('IS_PULLDOWN');

// Logo
const String logoUrl = String.fromEnvironment('LOGO_URL');

// Deep linking
const bool isDeepLink = bool.fromEnvironment('IS_DEEPLINK');

// Permissions
const bool isCameraEnabled = bool.fromEnvironment('IS_CAMERA');
const bool isLocationEnabled = bool.fromEnvironment('IS_LOCATION');
const bool isMicEnabled = bool.fromEnvironment('IS_MIC');
const bool isNotificationEnabled = bool.fromEnvironment('IS_NOTIFICATION');
const bool isContactEnabled = bool.fromEnvironment('IS_CONTACT');
const bool isBiometricEnabled = bool.fromEnvironment('IS_BIOMETRIC');
const bool isCalendarEnabled = bool.fromEnvironment('IS_CALENDAR');

// Push notification
const bool pushNotify = bool.fromEnvironment('PUSH_NOTIFY');

// Bottom menu
const bool isBottomMenu = bool.fromEnvironment('IS_BOTTOMMENU');
const String bottomMenuRaw = String.fromEnvironment('BOTTOMMENU_ITEMS');
final List<Map<String, dynamic>> bottomMenuItems =
(jsonDecode(bottomMenuRaw) as List)
    .map((e) => Map<String, dynamic>.from(e))
    .toList();

const String bottomMenuBgColor = String.fromEnvironment('BOTTOMMENU_BG_COLOR');
const String bottomMenuIconColor = String.fromEnvironment('BOTTOMMENU_ICON_COLOR');
const String bottomMenuTextColor = String.fromEnvironment('BOTTOMMENU_TEXT_COLOR');
const String bottomMenuActiveTabColor = String.fromEnvironment('BOTTOMMENU_ACTIVE_TAB_COLOR');
const String bottomMenuIconPosition = String.fromEnvironment('BOTTOMMENU_ICON_POSITION');
const String bottomMenuVisibleOn = String.fromEnvironment('BOTTOMMENU_VISIBLE_ON');

