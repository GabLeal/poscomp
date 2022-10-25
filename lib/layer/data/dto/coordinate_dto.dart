import 'package:poscomp/layer/domain/entity/coordinate_entity.dart';

class CoordinateDto extends CoordinateEntity {
  CoordinateDto(super.x, super.y, super.neighbor);

  factory CoordinateDto.fromJson(Map<String, dynamic> json) {
    return CoordinateDto(
      json['id'],
      json['name'],
      json['status'],
    );
  }
}
