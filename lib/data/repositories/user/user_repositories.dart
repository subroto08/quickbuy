import 'package:QuickBuy/data/repositories/authentication_repository.dart';
import 'package:QuickBuy/data/repositories/firebase_auth_exception.dart';
import 'package:QuickBuy/data/repositories/format_exception.dart';
import 'package:QuickBuy/data/repositories/platform_exception.dart';
import 'package:QuickBuy/data/repositories/user_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class UserRepository extends GetxController {
  static UserRepository get instance => Get.find();

  final FirebaseFirestore _db = FirebaseFirestore.instance;


  /// function to save user data to firestore.
  Future<void> saveUseRecord(UserModel user) async {
    try {
      await _db.collection("Users").doc(user.id).set(user.toJson());
    } on FirebaseException catch (e) {
      throw SFirebaseAuthException(e.code).message;
    } on FormatException catch (_) {
      throw const SFormatException();
    } on PlatformException catch (e) {
      throw SPlatformException(e.code).message;
    } catch (e) {
      throw 'Something went wrong.Please Try again';
    }
  }

  // function to fetchUserDetails

  Future<UserModel> fetchUserDetails() async {
    try {
      final documentSnapshot = await _db.collection("Users").doc(AuthenticationRepository.instance.authUser?.uid).get();
      if(documentSnapshot.exists) {
        return UserModel.fromSnapshot(documentSnapshot);
      }else{
        return UserModel.empty();
      }
    } on FirebaseException catch (e) {
      throw SFirebaseAuthException(e.code).message;
    } on FormatException catch (_) {
      throw const SFormatException();
    } on PlatformException catch (e) {
      throw SPlatformException(e.code).message;
    } catch (e) {
      throw 'Something went wrong.Please Try again';
    }
  }

  //function to update user data in firebase
  Future<void> updateUserDetails(UserModel updateUser) async {
    try {
      await _db.collection("Users").doc(updateUser.id).set(updateUser.toJson());
    } on FirebaseException catch (e) {
      throw SFirebaseAuthException(e.code).message;
    } on FormatException catch (_) {
      throw const SFormatException();
    } on PlatformException catch (e) {
      throw SPlatformException(e.code).message;
    } catch (e) {
      throw 'Something went wrong.Please Try again';
    }
  }

  //update any field in specific Users collection
  Future<void> updateSingleField(Map<String, dynamic> json) async {
    try {
      await _db.collection("Users").doc(AuthenticationRepository.instance.authUser?.uid).update(json);
    } on FirebaseException catch (e) {
      throw SFirebaseAuthException(e.code).message;
    } on FormatException catch (_) {
      throw const SFormatException();
    } on PlatformException catch (e) {
      throw SPlatformException(e.code).message;
    } catch (e) {
      throw 'Something went wrong.Please Try again';
    }
  }

  //function to remove user data from firebase
  Future<void> removeUserRecord(String userId) async {
    try {
      await _db.collection("Users").doc(userId).delete();
    } on FirebaseException catch (e) {
      throw SFirebaseAuthException(e.code).message;
    } on FormatException catch (_) {
      throw const SFormatException();
    } on PlatformException catch (e) {
      throw SPlatformException(e.code).message;
    } catch (e) {
      throw 'Something went wrong.Please Try again';
    }
  }




}