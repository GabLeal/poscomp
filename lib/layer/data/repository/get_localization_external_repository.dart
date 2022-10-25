import 'dart:convert';
import 'package:poscomp/layer/data/dto/coordinate_dto.dart';
import 'package:poscomp/layer/domain/entity/coordinate_entity.dart';
import 'package:poscomp/layer/domain/repository/get_localization_repository.dart';
import 'package:poscomp/layer/external/http/http_client.dart';

class GetLocalizationExtenralRepository implements GetLocalizationRepository {
  final IHttpClient _httpClient;

  GetLocalizationExtenralRepository(this._httpClient);

  @override
  Future<List<CoordinateEntity>> getLocalization() async {
    final result = await _httpClient.get('www.UMA-ROTA-QUALQUER.com/maps');
    var json = jsonDecode(result.body);
    // TODO: implement getLocalization
    return [
      CoordinateDto.fromJson(json),
    ];
  }
}
