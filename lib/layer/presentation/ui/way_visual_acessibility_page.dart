import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:poscomp/layer/data/repository/get_localization_local_repository.dart';
import 'package:poscomp/layer/domain/use_case/map_localization_implementation.dart';
import 'package:poscomp/layer/external/local_storage/local_storage_adapter.dart';
import 'package:poscomp/layer/presentation/controller/way_controller.dart';

class MapVisualAcessibilityPage extends StatefulWidget {
  const MapVisualAcessibilityPage({Key? key}) : super(key: key);

  @override
  State<MapVisualAcessibilityPage> createState() =>
      _MapVisualAcessibilityPageState();
}

class _MapVisualAcessibilityPageState extends State<MapVisualAcessibilityPage> {
  final mapController = MapController(
    MapLocalization(
      GetLocalizationLocalRepository(
        LocalStorageAdapter(
          const FlutterSecureStorage(),
        ),
      ),
    ),
  );

  @override
  void initState() {
    mapController.getMaps();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
    );
  }
}
