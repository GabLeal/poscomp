import 'package:poscomp/layer/domain/entity/coordinate_entity.dart';
import 'package:poscomp/layer/domain/repository/get_localization_repository.dart';
import 'package:poscomp/layer/external/local_storage/local_storage.dart';

class GetLocalizationLocalRepository implements GetLocalizationRepository {
  final ILocalStorage _localStorage;

  GetLocalizationLocalRepository(this._localStorage);
  @override
  Future<List<CoordinateEntity>> getLocalization() {
    // TODO: implement getLocalization
    throw UnimplementedError();
  }
}
