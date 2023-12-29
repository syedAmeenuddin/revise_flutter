class AuthUser {
  final String? uid;
  final String? email;
  final String? displayName;
  final String? photoURL;

  AuthUser({this.uid, this.email, this.displayName, this.photoURL});

  factory AuthUser.fromFirebaseUser(AuthUser user) {
    return AuthUser(
      uid: user.uid,
      email: user.email,
      displayName: user.displayName,
      photoURL: user.photoURL,
    );
  }
}
