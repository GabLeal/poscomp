import 'package:poscomp/layer/domain/entity/coordinate_entity.dart';
import 'package:poscomp/layer/domain/repository/get_localization_repository.dart';
import 'package:poscomp/layer/domain/use_case/map_localization_use_case.dart';

class MapLocalization implements IMapLocalizationUseCase {
  final GetLocalizationRepository _localizationRepository;

  MapLocalization(this._localizationRepository);

  @override
  Future<List<CoordinateEntity>> getLocalization() async {
    var result = await _localizationRepository.getLocalization();

    return result;
  }
}
