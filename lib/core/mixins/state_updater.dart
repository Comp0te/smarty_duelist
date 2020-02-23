import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

abstract class ID {
  int id;
}

mixin StateUpdaterMixin on Equatable {
  Map<String, V> updateEntities<V extends ID>({
    @required Map<String, V> stateEntities,
    @required List<V> eventEntitiesList,
  }) {
    if (eventEntitiesList == null) {
      return stateEntities;
    }

    final eventEntitiesMap = { for (var entity in eventEntitiesList) entity.id.toString() : entity };
    final newEntities = Map.of(stateEntities)..addAll(eventEntitiesMap);

    return newEntities;
  }

  Map<String, V> deleteEntities<V>({
    @required Map<String, V> stateEntities,
    @required List<String> entitiesIds,
  }) {
    if (entitiesIds == null) {
      return stateEntities;
    }

    return Map.from(stateEntities)
      ..removeWhere((key, value) => entitiesIds.contains(key));
  }
}
