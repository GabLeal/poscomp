import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:poscomp/layer/data/repository/get_localization_external_repository.dart';
import 'package:poscomp/layer/domain/use_case/map_localization_implementation.dart';
import 'package:poscomp/layer/external/http/http_adapter.dart';
import 'package:poscomp/layer/presentation/controller/way_controller.dart';

class MapPage extends StatefulWidget {
  const MapPage({Key? key}) : super(key: key);

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  final mapController = MapController(
    MapLocalization(
      GetLocalizationExtenralRepository(
        HttpAdapter(
          Client(),
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
      color: Colors.black,
    );
  }
}
