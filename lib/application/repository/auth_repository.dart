import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:hacksprint_flutter/core/failure/failures.dart';
import 'package:hacksprint_flutter/core/utils/logger.dart';
import 'package:injectable/injectable.dart';

@injectable
class AuthRepository {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  Future<Either<Failure, User?>> signupWithGoogle() async {
    try {
      // Trigger the authentication flow
      final GoogleSignInAccount? googleUser = await GoogleSignIn(
        scopes: [
          'https://www.googleapis.com/auth/drive',
        ],
      ).signIn();

      // Obtain the auth details from the request
      final GoogleSignInAuthentication? googleAuth =
          await googleUser?.authentication;

      // Create a new credential
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );

      // Once signed in, return the UserCredential
      UserCredential userCredential =
          await _firebaseAuth.signInWithCredential(credential);
      log(userCredential.user!.email.toString());
      return Right(userCredential.user);
    } catch (e) {
      Log.error(e.toString());
      return const Left(Failure.commonFailure());
    }
  }

  Future<void> signOut() async {
    _firebaseAuth.signOut();
  }
}
