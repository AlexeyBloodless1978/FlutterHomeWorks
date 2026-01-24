import 'package:firebase_auth/firebase_auth.dart';

abstract interface class AuthService {
  bool get isAuthenticated;

  User? get currentUser;

  Stream<User?> get userStream;

  Stream<bool> get authStatusChanged;

  Future<void> signInWithEmailAndPassword(String email, String password);

  Future<void> registerWithEmailAndPassword(String email, String password);

  Future<void> signOut();
}
/*
class AuthServiceMock extends AuthService {

  @override
  // TODO: implement authStatusChanged
  Stream<bool> get authStatusChanged => throw UnimplementedError();

  @override
  // TODO: implement currentUser
  User? get currentUser => throw UnimplementedError();

  @override
  // TODO: implement isAuthenticated
  bool get isAuthenticated => throw UnimplementedError();

  @override
  Future<void> registerWithEmailAndPassword(String email, String password) {
    // TODO: implement registerWithEmailAndPassword
    throw UnimplementedError();
  }

  @override
  Future<void> signInWithEmailAndPassword(String email, String password) {
    // TODO: implement signInWithEmailAndPassword
    throw UnimplementedError();
  }

  @override
  Future<void> signOut() {
    // TODO: implement signOut
    throw UnimplementedError();
  }

  @override
  // TODO: implement userStream
  Stream<User?> get userStream => Stream.value(User());

}

*/

final class AuthServiceImpl implements AuthService {
  final FirebaseAuth _firebaseAuth;
  const AuthServiceImpl({required FirebaseAuth firebaseAuth})
  : _firebaseAuth=firebaseAuth;


  @override
  // TODO: implement userStream
  Stream<User?> get userStream => _firebaseAuth.userChanges();

  @override
  // TODO: implement authStatusChanged
  Stream<bool> get authStatusChanged => userStream.map((e)=> e!=null);

  @override
  // TODO: implement currentUser
  User? get currentUser => _firebaseAuth.currentUser;

  @override
  // TODO: implement isAuthenticated
  bool get isAuthenticated => currentUser != null;

  @override
  Future<void> registerWithEmailAndPassword(String email, String password)  {
   return  _firebaseAuth.createUserWithEmailAndPassword(email: email, password: password);
  }

  @override
  Future<void> signInWithEmailAndPassword(String email, String password) {
  return _firebaseAuth.signInWithEmailAndPassword(email: email, password: password);

  }

  @override
  Future<void> signOut() {
    // TODO: implement signOut
    return _firebaseAuth.signOut();
  }


}