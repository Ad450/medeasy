import 'package:cloud_firestore/cloud_firestore.dart';

enum Collection {
  patients,
  practitioners,
  appointments,
  services,
  day,
}

class FirestoreStorage {
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  CollectionReference _getCollection(Collection collection) {
    return firestore.collection(collection.name);
  }

  Future<QueryDocumentSnapshot<Object?>> getByIdFuture({
    required String id,
    required Collection collection,
  }) async {
    var firestoreCollection = _getCollection(collection);
    final snapshot = await firestoreCollection.where('id', isEqualTo: id).get();
    return snapshot.docs.first;
  }

  Stream<QuerySnapshot<Object?>> getByIdStream({
    required String id,
    required Collection collection,
  }) {
    var firestoreCollection = _getCollection(collection);
    final snapshot = firestoreCollection.where("id", isEqualTo: id).snapshots();
    return snapshot;
  }

  Stream<QuerySnapshot<Object?>> getByKeyValueStream({
    required String key,
    required String value,
    required Collection collection,
  }) {
    var firestoreCollection = _getCollection(collection);
    final snapshot = firestoreCollection.where(key, isEqualTo: value).snapshots();
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

  Future<void> delete({required String id, required Collection collection}) async {
    var firestoreCollection = _getCollection(collection);
    final doc = await getByIdFuture(id: id, collection: collection);
    await firestoreCollection.doc(doc.id).delete();
  }

  Future<void> update({required String id, required Collection collection, required dynamic data}) async {
    var firestoreCollection = _getCollection(collection);
    final doc = await getByIdFuture(id: id, collection: collection);

    await firestoreCollection.doc(doc.id).update(data);
  }
}
