import 'package:cloud_firestore/cloud_firestore.dart';

enum Collection {
  patients,
  practitioners,
  appointments,
  services,
}

class FirestoreStorage {
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  CollectionReference _getCollection(Collection collection) {
    return firestore.collection(collection.name);
  }

  Future<QueryDocumentSnapshot<Object?>> getByUidFuture({required String uid, required Collection collection}) async {
    var firestoreCollection = _getCollection(collection);
    final snapshot = await firestoreCollection.where('uid', isEqualTo: uid).get();
    return snapshot.docs.first;
  }

  Stream<QuerySnapshot<Object?>> getByUidStream({
    required String uid,
    required Collection collection,
    required String key,
  }) {
    var firestoreCollection = _getCollection(collection);
    final snapshot = firestoreCollection.where(key, isEqualTo: uid).snapshots();
    return snapshot;
  }

  Future<List<QueryDocumentSnapshot<Object?>>> getAll(Collection collection) async {
    var firestoreCollection = _getCollection(collection);
    return await firestoreCollection.get().then((value) => value.docs);
  }

  Future<void> add({required Collection collection, required Object data}) async {
    var firestoreCollection = _getCollection(collection);
    await firestoreCollection.add(data);
  }

  Future<void> update({required String uid, required Collection collection, required dynamic data}) async {
    var firestoreCollection = _getCollection(collection);
    final doc = await getByUidFuture(uid: uid, collection: collection);

    await firestoreCollection.doc(doc.id).update(data);
  }
}
