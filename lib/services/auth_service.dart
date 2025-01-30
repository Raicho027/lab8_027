import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthService {

Future<UserCredential> signInWithGoogle() async {
  // Trigger the authentication flow
  // Create a new provider
  GoogleAuthProvider googleProvider = GoogleAuthProvider();

  googleProvider.addScope('https://www.googleapis.com/auth/contacts.readonly');
  googleProvider.setCustomParameters({
    'login_hint': 'user@example.com'
  });

  // Once signed in, return the UserCredential
  return await FirebaseAuth.instance.signInWithPopup(googleProvider);

  // Or use signInWithRedirect
  // return await FirebaseAuth.instance.signInWithRedirect(googleProvider);
}
  // final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

  // // Obtain the auth details from the request
  // final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

  // // Create a new credential
  // final credential = GoogleAuthProvider.credential(
  //   accessToken: googleAuth?.accessToken,
  //   idToken: googleAuth?.idToken,
  // );

  // // Once signed in, return the UserCredential
  // UserCredential userCredential=await FirebaseAuth.instance.signInWithCredential(credential);
  // print(UserCredential);

  // return userCredential;
}
Future<void> GoogleSignOut() async {
 await FirebaseAuth.instance.signOut();
 await GoogleSignIn().signOut();


} 



