import 'package:poscomp/layer/external/local_storage/storage_data.dart';

abstract class ILocalStorage {
  const ILocalStorage();

  Future<void> storeData({required StorageData data});

  Future<StorageData> getStoredData({required String key});

  Future<bool> hasStoredDataInKey({required String key});

  Future<void> deleteStoredData({required String key});
}
