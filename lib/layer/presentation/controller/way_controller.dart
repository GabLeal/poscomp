import 'package:flutter/material.dart';
import 'package:poscomp/layer/domain/entity/coordinate_entity.dart';
import 'package:poscomp/layer/domain/use_case/map_localization_use_case.dart';

enum Status { loading, done, idle, failure }

class MapController extends ChangeNotifier {
  final IMapLocalizationUseCase _mapLocalizationUseCase;

  MapController(this._mapLocalizationUseCase);

  Status status = Status.idle;

  List<CoordinateEntity> mapPoints = [];

  Future<void> getMaps() async {
    status = Status.loading;
    mapPoints = await _mapLocalizationUseCase.getLocalization();

    if (mapPoints.isNotEmpty) {
      status = Status.done;
    } else {
      status = Status.failure;
    }
  }
}
