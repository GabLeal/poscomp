import 'package:poscomp/layer/domain/entity/coordinate_entity.dart';

abstract class GetLocalizationRepository {
  Future<List<CoordinateEntity>> getLocalization();
}
