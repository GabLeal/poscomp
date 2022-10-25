class CoordinateEntity {
  final double x;
  final double y;
  final List<CoordinateEntity> neighbor;

  CoordinateEntity(this.x, this.y, this.neighbor);

  int numberOfNeighbor() {
    return neighbor.length;
  }

  CoordinateEntity nearestNeighbor() {
    // TODO: implement getStoredData
    throw UnimplementedError();
  }
}
