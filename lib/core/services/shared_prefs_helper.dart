import 'package:united_end2end/core/services/shared_prefs.dart';

const String _kSessionTokenKey = 'session_token';

class SharedPrefsHelper {
  final SharedPrefs _prefs;

  const SharedPrefsHelper(this._prefs);

  // Persist and retrieve value
  String get sessionToken => _prefs.getData(_kSessionTokenKey) ?? '';
  set setSessionToken(String value) => _prefs.saveData(_kSessionTokenKey, value);
}
