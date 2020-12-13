import 'package:meta/meta.dart';


class Unit {
  final String name;
  final double conversion;

  const Unit({
    @required this.name,
    @required this.conversion,
  });

  /// Creates a [Unit] from a JSON object.
  Unit.fromJson(Map jsonMap):
        name = jsonMap['name'],
        conversion = jsonMap['conversion'].toDouble();
}