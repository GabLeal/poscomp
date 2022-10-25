import 'package:poscomp/layer/domain/entity/coordinate_entity.dart';

abstract class IMapLocalizationUseCase {
  Future<List<CoordinateEntity>> getLocalization();
}
