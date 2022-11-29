// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../registered_point_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

extension GetRegisteredPointCollection on Isar {
  IsarCollection<RegisteredPoint> get registeredPoints => this.collection();
}

const RegisteredPointSchema = CollectionSchema(
  name: r'RegisteredPoint',
  id: -5753652927172256032,
  properties: {
    r'distance': PropertySchema(
      id: 0,
      name: r'distance',
      type: IsarType.double,
    ),
    r'emergency': PropertySchema(
      id: 1,
      name: r'emergency',
      type: IsarType.bool,
    ),
    r'employeeId': PropertySchema(
      id: 2,
      name: r'employeeId',
      type: IsarType.long,
    ),
    r'latitude': PropertySchema(
      id: 3,
      name: r'latitude',
      type: IsarType.double,
    ),
    r'longitude': PropertySchema(
      id: 4,
      name: r'longitude',
      type: IsarType.double,
    ),
    r'order': PropertySchema(
      id: 5,
      name: r'order',
      type: IsarType.string,
    ),
    r'schedule': PropertySchema(
      id: 6,
      name: r'schedule',
      type: IsarType.dateTime,
    ),
    r'sent': PropertySchema(
      id: 7,
      name: r'sent',
      type: IsarType.bool,
    )
  },
  estimateSize: _registeredPointEstimateSize,
  serialize: _registeredPointSerialize,
  deserialize: _registeredPointDeserialize,
  deserializeProp: _registeredPointDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _registeredPointGetId,
  getLinks: _registeredPointGetLinks,
  attach: _registeredPointAttach,
  version: '3.0.5',
);

int _registeredPointEstimateSize(
  RegisteredPoint object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.order.length * 3;
  return bytesCount;
}

void _registeredPointSerialize(
  RegisteredPoint object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDouble(offsets[0], object.distance);
  writer.writeBool(offsets[1], object.emergency);
  writer.writeLong(offsets[2], object.employeeId);
  writer.writeDouble(offsets[3], object.latitude);
  writer.writeDouble(offsets[4], object.longitude);
  writer.writeString(offsets[5], object.order);
  writer.writeDateTime(offsets[6], object.schedule);
  writer.writeBool(offsets[7], object.sent);
}

RegisteredPoint _registeredPointDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = RegisteredPoint(
    distance: reader.readDoubleOrNull(offsets[0]) ?? 0,
    emergency: reader.readBoolOrNull(offsets[1]) ?? false,
    employeeId: reader.readLong(offsets[2]),
    latitude: reader.readDoubleOrNull(offsets[3]) ?? 0,
    longitude: reader.readDoubleOrNull(offsets[4]) ?? 0,
    order: reader.readString(offsets[5]),
    schedule: reader.readDateTime(offsets[6]),
    sent: reader.readBoolOrNull(offsets[7]) ?? false,
  );
  return object;
}

P _registeredPointDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDoubleOrNull(offset) ?? 0) as P;
    case 1:
      return (reader.readBoolOrNull(offset) ?? false) as P;
    case 2:
      return (reader.readLong(offset)) as P;
    case 3:
      return (reader.readDoubleOrNull(offset) ?? 0) as P;
    case 4:
      return (reader.readDoubleOrNull(offset) ?? 0) as P;
    case 5:
      return (reader.readString(offset)) as P;
    case 6:
      return (reader.readDateTime(offset)) as P;
    case 7:
      return (reader.readBoolOrNull(offset) ?? false) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _registeredPointGetId(RegisteredPoint object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _registeredPointGetLinks(RegisteredPoint object) {
  return [];
}

void _registeredPointAttach(
    IsarCollection<dynamic> col, Id id, RegisteredPoint object) {}

extension RegisteredPointQueryWhereSort
    on QueryBuilder<RegisteredPoint, RegisteredPoint, QWhere> {
  QueryBuilder<RegisteredPoint, RegisteredPoint, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension RegisteredPointQueryWhere
    on QueryBuilder<RegisteredPoint, RegisteredPoint, QWhereClause> {
  QueryBuilder<RegisteredPoint, RegisteredPoint, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<RegisteredPoint, RegisteredPoint, QAfterWhereClause>
      idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<RegisteredPoint, RegisteredPoint, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<RegisteredPoint, RegisteredPoint, QAfterWhereClause> idLessThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<RegisteredPoint, RegisteredPoint, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension RegisteredPointQueryFilter
    on QueryBuilder<RegisteredPoint, RegisteredPoint, QFilterCondition> {
  QueryBuilder<RegisteredPoint, RegisteredPoint, QAfterFilterCondition>
      distanceEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'distance',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<RegisteredPoint, RegisteredPoint, QAfterFilterCondition>
      distanceGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'distance',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<RegisteredPoint, RegisteredPoint, QAfterFilterCondition>
      distanceLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'distance',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<RegisteredPoint, RegisteredPoint, QAfterFilterCondition>
      distanceBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'distance',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<RegisteredPoint, RegisteredPoint, QAfterFilterCondition>
      emergencyEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'emergency',
        value: value,
      ));
    });
  }

  QueryBuilder<RegisteredPoint, RegisteredPoint, QAfterFilterCondition>
      employeeIdEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'employeeId',
        value: value,
      ));
    });
  }

  QueryBuilder<RegisteredPoint, RegisteredPoint, QAfterFilterCondition>
      employeeIdGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'employeeId',
        value: value,
      ));
    });
  }

  QueryBuilder<RegisteredPoint, RegisteredPoint, QAfterFilterCondition>
      employeeIdLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'employeeId',
        value: value,
      ));
    });
  }

  QueryBuilder<RegisteredPoint, RegisteredPoint, QAfterFilterCondition>
      employeeIdBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'employeeId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<RegisteredPoint, RegisteredPoint, QAfterFilterCondition>
      idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<RegisteredPoint, RegisteredPoint, QAfterFilterCondition>
      idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<RegisteredPoint, RegisteredPoint, QAfterFilterCondition>
      idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<RegisteredPoint, RegisteredPoint, QAfterFilterCondition>
      idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<RegisteredPoint, RegisteredPoint, QAfterFilterCondition>
      latitudeEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'latitude',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<RegisteredPoint, RegisteredPoint, QAfterFilterCondition>
      latitudeGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'latitude',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<RegisteredPoint, RegisteredPoint, QAfterFilterCondition>
      latitudeLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'latitude',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<RegisteredPoint, RegisteredPoint, QAfterFilterCondition>
      latitudeBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'latitude',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<RegisteredPoint, RegisteredPoint, QAfterFilterCondition>
      longitudeEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'longitude',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<RegisteredPoint, RegisteredPoint, QAfterFilterCondition>
      longitudeGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'longitude',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<RegisteredPoint, RegisteredPoint, QAfterFilterCondition>
      longitudeLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'longitude',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<RegisteredPoint, RegisteredPoint, QAfterFilterCondition>
      longitudeBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'longitude',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<RegisteredPoint, RegisteredPoint, QAfterFilterCondition>
      orderEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'order',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RegisteredPoint, RegisteredPoint, QAfterFilterCondition>
      orderGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'order',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RegisteredPoint, RegisteredPoint, QAfterFilterCondition>
      orderLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'order',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RegisteredPoint, RegisteredPoint, QAfterFilterCondition>
      orderBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'order',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RegisteredPoint, RegisteredPoint, QAfterFilterCondition>
      orderStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'order',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RegisteredPoint, RegisteredPoint, QAfterFilterCondition>
      orderEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'order',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RegisteredPoint, RegisteredPoint, QAfterFilterCondition>
      orderContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'order',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RegisteredPoint, RegisteredPoint, QAfterFilterCondition>
      orderMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'order',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RegisteredPoint, RegisteredPoint, QAfterFilterCondition>
      orderIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'order',
        value: '',
      ));
    });
  }

  QueryBuilder<RegisteredPoint, RegisteredPoint, QAfterFilterCondition>
      orderIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'order',
        value: '',
      ));
    });
  }

  QueryBuilder<RegisteredPoint, RegisteredPoint, QAfterFilterCondition>
      scheduleEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'schedule',
        value: value,
      ));
    });
  }

  QueryBuilder<RegisteredPoint, RegisteredPoint, QAfterFilterCondition>
      scheduleGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'schedule',
        value: value,
      ));
    });
  }

  QueryBuilder<RegisteredPoint, RegisteredPoint, QAfterFilterCondition>
      scheduleLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'schedule',
        value: value,
      ));
    });
  }

  QueryBuilder<RegisteredPoint, RegisteredPoint, QAfterFilterCondition>
      scheduleBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'schedule',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<RegisteredPoint, RegisteredPoint, QAfterFilterCondition>
      sentEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sent',
        value: value,
      ));
    });
  }
}

extension RegisteredPointQueryObject
    on QueryBuilder<RegisteredPoint, RegisteredPoint, QFilterCondition> {}

extension RegisteredPointQueryLinks
    on QueryBuilder<RegisteredPoint, RegisteredPoint, QFilterCondition> {}

extension RegisteredPointQuerySortBy
    on QueryBuilder<RegisteredPoint, RegisteredPoint, QSortBy> {
  QueryBuilder<RegisteredPoint, RegisteredPoint, QAfterSortBy>
      sortByDistance() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'distance', Sort.asc);
    });
  }

  QueryBuilder<RegisteredPoint, RegisteredPoint, QAfterSortBy>
      sortByDistanceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'distance', Sort.desc);
    });
  }

  QueryBuilder<RegisteredPoint, RegisteredPoint, QAfterSortBy>
      sortByEmergency() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'emergency', Sort.asc);
    });
  }

  QueryBuilder<RegisteredPoint, RegisteredPoint, QAfterSortBy>
      sortByEmergencyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'emergency', Sort.desc);
    });
  }

  QueryBuilder<RegisteredPoint, RegisteredPoint, QAfterSortBy>
      sortByEmployeeId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'employeeId', Sort.asc);
    });
  }

  QueryBuilder<RegisteredPoint, RegisteredPoint, QAfterSortBy>
      sortByEmployeeIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'employeeId', Sort.desc);
    });
  }

  QueryBuilder<RegisteredPoint, RegisteredPoint, QAfterSortBy>
      sortByLatitude() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'latitude', Sort.asc);
    });
  }

  QueryBuilder<RegisteredPoint, RegisteredPoint, QAfterSortBy>
      sortByLatitudeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'latitude', Sort.desc);
    });
  }

  QueryBuilder<RegisteredPoint, RegisteredPoint, QAfterSortBy>
      sortByLongitude() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'longitude', Sort.asc);
    });
  }

  QueryBuilder<RegisteredPoint, RegisteredPoint, QAfterSortBy>
      sortByLongitudeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'longitude', Sort.desc);
    });
  }

  QueryBuilder<RegisteredPoint, RegisteredPoint, QAfterSortBy> sortByOrder() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'order', Sort.asc);
    });
  }

  QueryBuilder<RegisteredPoint, RegisteredPoint, QAfterSortBy>
      sortByOrderDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'order', Sort.desc);
    });
  }

  QueryBuilder<RegisteredPoint, RegisteredPoint, QAfterSortBy>
      sortBySchedule() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'schedule', Sort.asc);
    });
  }

  QueryBuilder<RegisteredPoint, RegisteredPoint, QAfterSortBy>
      sortByScheduleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'schedule', Sort.desc);
    });
  }

  QueryBuilder<RegisteredPoint, RegisteredPoint, QAfterSortBy> sortBySent() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sent', Sort.asc);
    });
  }

  QueryBuilder<RegisteredPoint, RegisteredPoint, QAfterSortBy>
      sortBySentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sent', Sort.desc);
    });
  }
}

extension RegisteredPointQuerySortThenBy
    on QueryBuilder<RegisteredPoint, RegisteredPoint, QSortThenBy> {
  QueryBuilder<RegisteredPoint, RegisteredPoint, QAfterSortBy>
      thenByDistance() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'distance', Sort.asc);
    });
  }

  QueryBuilder<RegisteredPoint, RegisteredPoint, QAfterSortBy>
      thenByDistanceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'distance', Sort.desc);
    });
  }

  QueryBuilder<RegisteredPoint, RegisteredPoint, QAfterSortBy>
      thenByEmergency() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'emergency', Sort.asc);
    });
  }

  QueryBuilder<RegisteredPoint, RegisteredPoint, QAfterSortBy>
      thenByEmergencyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'emergency', Sort.desc);
    });
  }

  QueryBuilder<RegisteredPoint, RegisteredPoint, QAfterSortBy>
      thenByEmployeeId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'employeeId', Sort.asc);
    });
  }

  QueryBuilder<RegisteredPoint, RegisteredPoint, QAfterSortBy>
      thenByEmployeeIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'employeeId', Sort.desc);
    });
  }

  QueryBuilder<RegisteredPoint, RegisteredPoint, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<RegisteredPoint, RegisteredPoint, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<RegisteredPoint, RegisteredPoint, QAfterSortBy>
      thenByLatitude() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'latitude', Sort.asc);
    });
  }

  QueryBuilder<RegisteredPoint, RegisteredPoint, QAfterSortBy>
      thenByLatitudeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'latitude', Sort.desc);
    });
  }

  QueryBuilder<RegisteredPoint, RegisteredPoint, QAfterSortBy>
      thenByLongitude() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'longitude', Sort.asc);
    });
  }

  QueryBuilder<RegisteredPoint, RegisteredPoint, QAfterSortBy>
      thenByLongitudeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'longitude', Sort.desc);
    });
  }

  QueryBuilder<RegisteredPoint, RegisteredPoint, QAfterSortBy> thenByOrder() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'order', Sort.asc);
    });
  }

  QueryBuilder<RegisteredPoint, RegisteredPoint, QAfterSortBy>
      thenByOrderDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'order', Sort.desc);
    });
  }

  QueryBuilder<RegisteredPoint, RegisteredPoint, QAfterSortBy>
      thenBySchedule() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'schedule', Sort.asc);
    });
  }

  QueryBuilder<RegisteredPoint, RegisteredPoint, QAfterSortBy>
      thenByScheduleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'schedule', Sort.desc);
    });
  }

  QueryBuilder<RegisteredPoint, RegisteredPoint, QAfterSortBy> thenBySent() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sent', Sort.asc);
    });
  }

  QueryBuilder<RegisteredPoint, RegisteredPoint, QAfterSortBy>
      thenBySentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sent', Sort.desc);
    });
  }
}

extension RegisteredPointQueryWhereDistinct
    on QueryBuilder<RegisteredPoint, RegisteredPoint, QDistinct> {
  QueryBuilder<RegisteredPoint, RegisteredPoint, QDistinct>
      distinctByDistance() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'distance');
    });
  }

  QueryBuilder<RegisteredPoint, RegisteredPoint, QDistinct>
      distinctByEmergency() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'emergency');
    });
  }

  QueryBuilder<RegisteredPoint, RegisteredPoint, QDistinct>
      distinctByEmployeeId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'employeeId');
    });
  }

  QueryBuilder<RegisteredPoint, RegisteredPoint, QDistinct>
      distinctByLatitude() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'latitude');
    });
  }

  QueryBuilder<RegisteredPoint, RegisteredPoint, QDistinct>
      distinctByLongitude() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'longitude');
    });
  }

  QueryBuilder<RegisteredPoint, RegisteredPoint, QDistinct> distinctByOrder(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'order', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RegisteredPoint, RegisteredPoint, QDistinct>
      distinctBySchedule() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'schedule');
    });
  }

  QueryBuilder<RegisteredPoint, RegisteredPoint, QDistinct> distinctBySent() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'sent');
    });
  }
}

extension RegisteredPointQueryProperty
    on QueryBuilder<RegisteredPoint, RegisteredPoint, QQueryProperty> {
  QueryBuilder<RegisteredPoint, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<RegisteredPoint, double, QQueryOperations> distanceProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'distance');
    });
  }

  QueryBuilder<RegisteredPoint, bool, QQueryOperations> emergencyProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'emergency');
    });
  }

  QueryBuilder<RegisteredPoint, int, QQueryOperations> employeeIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'employeeId');
    });
  }

  QueryBuilder<RegisteredPoint, double, QQueryOperations> latitudeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'latitude');
    });
  }

  QueryBuilder<RegisteredPoint, double, QQueryOperations> longitudeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'longitude');
    });
  }

  QueryBuilder<RegisteredPoint, String, QQueryOperations> orderProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'order');
    });
  }

  QueryBuilder<RegisteredPoint, DateTime, QQueryOperations> scheduleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'schedule');
    });
  }

  QueryBuilder<RegisteredPoint, bool, QQueryOperations> sentProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'sent');
    });
  }
}
