import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:poscomp/layer/external/local_storage/local_storage.dart';
import 'package:poscomp/layer/external/local_storage/storage_data.dart';

class LocalStorageAdapter implements ILocalStorage {
  final FlutterSecureStorage _secureStorage;

  LocalStorageAdapter(this._secureStorage);

  @override
  Future<void> deleteStoredData({required String key}) {
    // TODO: implement deleteStoredData
    throw UnimplementedError();
  }

  @override
  Future<StorageData> getStoredData({required String key}) {
    // TODO: implement getStoredData
    throw UnimplementedError();
  }

  @override
  Future<bool> hasStoredDataInKey({required String key}) {
    // TODO: implement hasStoredDataInKey
    throw UnimplementedError();
  }

  @override
  Future<void> storeData({required StorageData data}) {
    // TODO: implement storeData
    throw UnimplementedError();
  }
}
