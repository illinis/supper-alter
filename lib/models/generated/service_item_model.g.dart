// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../service_item_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

extension GetServiceItemCollection on Isar {
  IsarCollection<ServiceItem> get serviceItems => this.collection();
}

const ServiceItemSchema = CollectionSchema(
  name: r'ServiceItem',
  id: 6129215430675734637,
  properties: {
    r'abbreviation': PropertySchema(
      id: 0,
      name: r'abbreviation',
      type: IsarType.string,
    ),
    r'companyId': PropertySchema(
      id: 1,
      name: r'companyId',
      type: IsarType.long,
    ),
    r'createdAt': PropertySchema(
      id: 2,
      name: r'createdAt',
      type: IsarType.dateTime,
    ),
    r'description': PropertySchema(
      id: 3,
      name: r'description',
      type: IsarType.string,
    ),
    r'goal': PropertySchema(
      id: 4,
      name: r'goal',
      type: IsarType.long,
    ),
    r'progressiveTablesId': PropertySchema(
      id: 5,
      name: r'progressiveTablesId',
      type: IsarType.long,
    ),
    r'serviceClassificationDescription': PropertySchema(
      id: 6,
      name: r'serviceClassificationDescription',
      type: IsarType.string,
    ),
    r'serviceClassificationId': PropertySchema(
      id: 7,
      name: r'serviceClassificationId',
      type: IsarType.long,
    ),
    r'serviceId': PropertySchema(
      id: 8,
      name: r'serviceId',
      type: IsarType.long,
    ),
    r'unitService': PropertySchema(
      id: 9,
      name: r'unitService',
      type: IsarType.string,
    ),
    r'unitaryValue': PropertySchema(
      id: 10,
      name: r'unitaryValue',
      type: IsarType.double,
    ),
    r'updatedAt': PropertySchema(
      id: 11,
      name: r'updatedAt',
      type: IsarType.dateTime,
    ),
    r'workId': PropertySchema(
      id: 12,
      name: r'workId',
      type: IsarType.long,
    )
  },
  estimateSize: _serviceItemEstimateSize,
  serialize: _serviceItemSerialize,
  deserialize: _serviceItemDeserialize,
  deserializeProp: _serviceItemDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _serviceItemGetId,
  getLinks: _serviceItemGetLinks,
  attach: _serviceItemAttach,
  version: '3.0.5',
);

int _serviceItemEstimateSize(
  ServiceItem object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.abbreviation;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.description.length * 3;
  {
    final value = object.serviceClassificationDescription;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.unitService.length * 3;
  return bytesCount;
}

void _serviceItemSerialize(
  ServiceItem object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.abbreviation);
  writer.writeLong(offsets[1], object.companyId);
  writer.writeDateTime(offsets[2], object.createdAt);
  writer.writeString(offsets[3], object.description);
  writer.writeLong(offsets[4], object.goal);
  writer.writeLong(offsets[5], object.progressiveTablesId);
  writer.writeString(offsets[6], object.serviceClassificationDescription);
  writer.writeLong(offsets[7], object.serviceClassificationId);
  writer.writeLong(offsets[8], object.serviceId);
  writer.writeString(offsets[9], object.unitService);
  writer.writeDouble(offsets[10], object.unitaryValue);
  writer.writeDateTime(offsets[11], object.updatedAt);
  writer.writeLong(offsets[12], object.workId);
}

ServiceItem _serviceItemDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ServiceItem(
    companyId: reader.readLong(offsets[1]),
    createdAt: reader.readDateTime(offsets[2]),
    description: reader.readString(offsets[3]),
    goal: reader.readLongOrNull(offsets[4]),
    progressiveTablesId: reader.readLongOrNull(offsets[5]),
    serviceClassificationId: reader.readLong(offsets[7]),
    serviceId: reader.readLong(offsets[8]),
    unitService: reader.readString(offsets[9]),
    unitaryValue: reader.readDouble(offsets[10]),
    updatedAt: reader.readDateTime(offsets[11]),
    workId: reader.readLong(offsets[12]),
  );
  return object;
}

P _serviceItemDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readLong(offset)) as P;
    case 2:
      return (reader.readDateTime(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readLongOrNull(offset)) as P;
    case 5:
      return (reader.readLongOrNull(offset)) as P;
    case 6:
      return (reader.readStringOrNull(offset)) as P;
    case 7:
      return (reader.readLong(offset)) as P;
    case 8:
      return (reader.readLong(offset)) as P;
    case 9:
      return (reader.readString(offset)) as P;
    case 10:
      return (reader.readDouble(offset)) as P;
    case 11:
      return (reader.readDateTime(offset)) as P;
    case 12:
      return (reader.readLong(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _serviceItemGetId(ServiceItem object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _serviceItemGetLinks(ServiceItem object) {
  return [];
}

void _serviceItemAttach(
    IsarCollection<dynamic> col, Id id, ServiceItem object) {}

extension ServiceItemQueryWhereSort
    on QueryBuilder<ServiceItem, ServiceItem, QWhere> {
  QueryBuilder<ServiceItem, ServiceItem, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension ServiceItemQueryWhere
    on QueryBuilder<ServiceItem, ServiceItem, QWhereClause> {
  QueryBuilder<ServiceItem, ServiceItem, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<ServiceItem, ServiceItem, QAfterWhereClause> idNotEqualTo(
      Id id) {
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

  QueryBuilder<ServiceItem, ServiceItem, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<ServiceItem, ServiceItem, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<ServiceItem, ServiceItem, QAfterWhereClause> idBetween(
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

extension ServiceItemQueryFilter
    on QueryBuilder<ServiceItem, ServiceItem, QFilterCondition> {
  QueryBuilder<ServiceItem, ServiceItem, QAfterFilterCondition>
      abbreviationIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'abbreviation',
      ));
    });
  }

  QueryBuilder<ServiceItem, ServiceItem, QAfterFilterCondition>
      abbreviationIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'abbreviation',
      ));
    });
  }

  QueryBuilder<ServiceItem, ServiceItem, QAfterFilterCondition>
      abbreviationEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'abbreviation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ServiceItem, ServiceItem, QAfterFilterCondition>
      abbreviationGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'abbreviation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ServiceItem, ServiceItem, QAfterFilterCondition>
      abbreviationLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'abbreviation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ServiceItem, ServiceItem, QAfterFilterCondition>
      abbreviationBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'abbreviation',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ServiceItem, ServiceItem, QAfterFilterCondition>
      abbreviationStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'abbreviation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ServiceItem, ServiceItem, QAfterFilterCondition>
      abbreviationEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'abbreviation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ServiceItem, ServiceItem, QAfterFilterCondition>
      abbreviationContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'abbreviation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ServiceItem, ServiceItem, QAfterFilterCondition>
      abbreviationMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'abbreviation',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ServiceItem, ServiceItem, QAfterFilterCondition>
      abbreviationIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'abbreviation',
        value: '',
      ));
    });
  }

  QueryBuilder<ServiceItem, ServiceItem, QAfterFilterCondition>
      abbreviationIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'abbreviation',
        value: '',
      ));
    });
  }

  QueryBuilder<ServiceItem, ServiceItem, QAfterFilterCondition>
      companyIdEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'companyId',
        value: value,
      ));
    });
  }

  QueryBuilder<ServiceItem, ServiceItem, QAfterFilterCondition>
      companyIdGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'companyId',
        value: value,
      ));
    });
  }

  QueryBuilder<ServiceItem, ServiceItem, QAfterFilterCondition>
      companyIdLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'companyId',
        value: value,
      ));
    });
  }

  QueryBuilder<ServiceItem, ServiceItem, QAfterFilterCondition>
      companyIdBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'companyId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ServiceItem, ServiceItem, QAfterFilterCondition>
      createdAtEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<ServiceItem, ServiceItem, QAfterFilterCondition>
      createdAtGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<ServiceItem, ServiceItem, QAfterFilterCondition>
      createdAtLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<ServiceItem, ServiceItem, QAfterFilterCondition>
      createdAtBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'createdAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ServiceItem, ServiceItem, QAfterFilterCondition>
      descriptionEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ServiceItem, ServiceItem, QAfterFilterCondition>
      descriptionGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ServiceItem, ServiceItem, QAfterFilterCondition>
      descriptionLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ServiceItem, ServiceItem, QAfterFilterCondition>
      descriptionBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'description',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ServiceItem, ServiceItem, QAfterFilterCondition>
      descriptionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ServiceItem, ServiceItem, QAfterFilterCondition>
      descriptionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ServiceItem, ServiceItem, QAfterFilterCondition>
      descriptionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ServiceItem, ServiceItem, QAfterFilterCondition>
      descriptionMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'description',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ServiceItem, ServiceItem, QAfterFilterCondition>
      descriptionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'description',
        value: '',
      ));
    });
  }

  QueryBuilder<ServiceItem, ServiceItem, QAfterFilterCondition>
      descriptionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'description',
        value: '',
      ));
    });
  }

  QueryBuilder<ServiceItem, ServiceItem, QAfterFilterCondition> goalIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'goal',
      ));
    });
  }

  QueryBuilder<ServiceItem, ServiceItem, QAfterFilterCondition>
      goalIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'goal',
      ));
    });
  }

  QueryBuilder<ServiceItem, ServiceItem, QAfterFilterCondition> goalEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'goal',
        value: value,
      ));
    });
  }

  QueryBuilder<ServiceItem, ServiceItem, QAfterFilterCondition> goalGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'goal',
        value: value,
      ));
    });
  }

  QueryBuilder<ServiceItem, ServiceItem, QAfterFilterCondition> goalLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'goal',
        value: value,
      ));
    });
  }

  QueryBuilder<ServiceItem, ServiceItem, QAfterFilterCondition> goalBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'goal',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ServiceItem, ServiceItem, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ServiceItem, ServiceItem, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<ServiceItem, ServiceItem, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<ServiceItem, ServiceItem, QAfterFilterCondition> idBetween(
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

  QueryBuilder<ServiceItem, ServiceItem, QAfterFilterCondition>
      progressiveTablesIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'progressiveTablesId',
      ));
    });
  }

  QueryBuilder<ServiceItem, ServiceItem, QAfterFilterCondition>
      progressiveTablesIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'progressiveTablesId',
      ));
    });
  }

  QueryBuilder<ServiceItem, ServiceItem, QAfterFilterCondition>
      progressiveTablesIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'progressiveTablesId',
        value: value,
      ));
    });
  }

  QueryBuilder<ServiceItem, ServiceItem, QAfterFilterCondition>
      progressiveTablesIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'progressiveTablesId',
        value: value,
      ));
    });
  }

  QueryBuilder<ServiceItem, ServiceItem, QAfterFilterCondition>
      progressiveTablesIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'progressiveTablesId',
        value: value,
      ));
    });
  }

  QueryBuilder<ServiceItem, ServiceItem, QAfterFilterCondition>
      progressiveTablesIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'progressiveTablesId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ServiceItem, ServiceItem, QAfterFilterCondition>
      serviceClassificationDescriptionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'serviceClassificationDescription',
      ));
    });
  }

  QueryBuilder<ServiceItem, ServiceItem, QAfterFilterCondition>
      serviceClassificationDescriptionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'serviceClassificationDescription',
      ));
    });
  }

  QueryBuilder<ServiceItem, ServiceItem, QAfterFilterCondition>
      serviceClassificationDescriptionEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'serviceClassificationDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ServiceItem, ServiceItem, QAfterFilterCondition>
      serviceClassificationDescriptionGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'serviceClassificationDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ServiceItem, ServiceItem, QAfterFilterCondition>
      serviceClassificationDescriptionLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'serviceClassificationDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ServiceItem, ServiceItem, QAfterFilterCondition>
      serviceClassificationDescriptionBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'serviceClassificationDescription',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ServiceItem, ServiceItem, QAfterFilterCondition>
      serviceClassificationDescriptionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'serviceClassificationDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ServiceItem, ServiceItem, QAfterFilterCondition>
      serviceClassificationDescriptionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'serviceClassificationDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ServiceItem, ServiceItem, QAfterFilterCondition>
      serviceClassificationDescriptionContains(String value,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'serviceClassificationDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ServiceItem, ServiceItem, QAfterFilterCondition>
      serviceClassificationDescriptionMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'serviceClassificationDescription',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ServiceItem, ServiceItem, QAfterFilterCondition>
      serviceClassificationDescriptionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'serviceClassificationDescription',
        value: '',
      ));
    });
  }

  QueryBuilder<ServiceItem, ServiceItem, QAfterFilterCondition>
      serviceClassificationDescriptionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'serviceClassificationDescription',
        value: '',
      ));
    });
  }

  QueryBuilder<ServiceItem, ServiceItem, QAfterFilterCondition>
      serviceClassificationIdEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'serviceClassificationId',
        value: value,
      ));
    });
  }

  QueryBuilder<ServiceItem, ServiceItem, QAfterFilterCondition>
      serviceClassificationIdGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'serviceClassificationId',
        value: value,
      ));
    });
  }

  QueryBuilder<ServiceItem, ServiceItem, QAfterFilterCondition>
      serviceClassificationIdLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'serviceClassificationId',
        value: value,
      ));
    });
  }

  QueryBuilder<ServiceItem, ServiceItem, QAfterFilterCondition>
      serviceClassificationIdBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'serviceClassificationId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ServiceItem, ServiceItem, QAfterFilterCondition>
      serviceIdEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'serviceId',
        value: value,
      ));
    });
  }

  QueryBuilder<ServiceItem, ServiceItem, QAfterFilterCondition>
      serviceIdGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'serviceId',
        value: value,
      ));
    });
  }

  QueryBuilder<ServiceItem, ServiceItem, QAfterFilterCondition>
      serviceIdLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'serviceId',
        value: value,
      ));
    });
  }

  QueryBuilder<ServiceItem, ServiceItem, QAfterFilterCondition>
      serviceIdBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'serviceId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ServiceItem, ServiceItem, QAfterFilterCondition>
      unitServiceEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'unitService',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ServiceItem, ServiceItem, QAfterFilterCondition>
      unitServiceGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'unitService',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ServiceItem, ServiceItem, QAfterFilterCondition>
      unitServiceLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'unitService',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ServiceItem, ServiceItem, QAfterFilterCondition>
      unitServiceBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'unitService',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ServiceItem, ServiceItem, QAfterFilterCondition>
      unitServiceStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'unitService',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ServiceItem, ServiceItem, QAfterFilterCondition>
      unitServiceEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'unitService',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ServiceItem, ServiceItem, QAfterFilterCondition>
      unitServiceContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'unitService',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ServiceItem, ServiceItem, QAfterFilterCondition>
      unitServiceMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'unitService',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ServiceItem, ServiceItem, QAfterFilterCondition>
      unitServiceIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'unitService',
        value: '',
      ));
    });
  }

  QueryBuilder<ServiceItem, ServiceItem, QAfterFilterCondition>
      unitServiceIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'unitService',
        value: '',
      ));
    });
  }

  QueryBuilder<ServiceItem, ServiceItem, QAfterFilterCondition>
      unitaryValueEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'unitaryValue',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ServiceItem, ServiceItem, QAfterFilterCondition>
      unitaryValueGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'unitaryValue',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ServiceItem, ServiceItem, QAfterFilterCondition>
      unitaryValueLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'unitaryValue',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ServiceItem, ServiceItem, QAfterFilterCondition>
      unitaryValueBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'unitaryValue',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ServiceItem, ServiceItem, QAfterFilterCondition>
      updatedAtEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'updatedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<ServiceItem, ServiceItem, QAfterFilterCondition>
      updatedAtGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'updatedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<ServiceItem, ServiceItem, QAfterFilterCondition>
      updatedAtLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'updatedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<ServiceItem, ServiceItem, QAfterFilterCondition>
      updatedAtBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'updatedAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ServiceItem, ServiceItem, QAfterFilterCondition> workIdEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'workId',
        value: value,
      ));
    });
  }

  QueryBuilder<ServiceItem, ServiceItem, QAfterFilterCondition>
      workIdGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'workId',
        value: value,
      ));
    });
  }

  QueryBuilder<ServiceItem, ServiceItem, QAfterFilterCondition> workIdLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'workId',
        value: value,
      ));
    });
  }

  QueryBuilder<ServiceItem, ServiceItem, QAfterFilterCondition> workIdBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'workId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension ServiceItemQueryObject
    on QueryBuilder<ServiceItem, ServiceItem, QFilterCondition> {}

extension ServiceItemQueryLinks
    on QueryBuilder<ServiceItem, ServiceItem, QFilterCondition> {}

extension ServiceItemQuerySortBy
    on QueryBuilder<ServiceItem, ServiceItem, QSortBy> {
  QueryBuilder<ServiceItem, ServiceItem, QAfterSortBy> sortByAbbreviation() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'abbreviation', Sort.asc);
    });
  }

  QueryBuilder<ServiceItem, ServiceItem, QAfterSortBy>
      sortByAbbreviationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'abbreviation', Sort.desc);
    });
  }

  QueryBuilder<ServiceItem, ServiceItem, QAfterSortBy> sortByCompanyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'companyId', Sort.asc);
    });
  }

  QueryBuilder<ServiceItem, ServiceItem, QAfterSortBy> sortByCompanyIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'companyId', Sort.desc);
    });
  }

  QueryBuilder<ServiceItem, ServiceItem, QAfterSortBy> sortByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<ServiceItem, ServiceItem, QAfterSortBy> sortByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<ServiceItem, ServiceItem, QAfterSortBy> sortByDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.asc);
    });
  }

  QueryBuilder<ServiceItem, ServiceItem, QAfterSortBy> sortByDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.desc);
    });
  }

  QueryBuilder<ServiceItem, ServiceItem, QAfterSortBy> sortByGoal() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'goal', Sort.asc);
    });
  }

  QueryBuilder<ServiceItem, ServiceItem, QAfterSortBy> sortByGoalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'goal', Sort.desc);
    });
  }

  QueryBuilder<ServiceItem, ServiceItem, QAfterSortBy>
      sortByProgressiveTablesId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'progressiveTablesId', Sort.asc);
    });
  }

  QueryBuilder<ServiceItem, ServiceItem, QAfterSortBy>
      sortByProgressiveTablesIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'progressiveTablesId', Sort.desc);
    });
  }

  QueryBuilder<ServiceItem, ServiceItem, QAfterSortBy>
      sortByServiceClassificationDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'serviceClassificationDescription', Sort.asc);
    });
  }

  QueryBuilder<ServiceItem, ServiceItem, QAfterSortBy>
      sortByServiceClassificationDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'serviceClassificationDescription', Sort.desc);
    });
  }

  QueryBuilder<ServiceItem, ServiceItem, QAfterSortBy>
      sortByServiceClassificationId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'serviceClassificationId', Sort.asc);
    });
  }

  QueryBuilder<ServiceItem, ServiceItem, QAfterSortBy>
      sortByServiceClassificationIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'serviceClassificationId', Sort.desc);
    });
  }

  QueryBuilder<ServiceItem, ServiceItem, QAfterSortBy> sortByServiceId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'serviceId', Sort.asc);
    });
  }

  QueryBuilder<ServiceItem, ServiceItem, QAfterSortBy> sortByServiceIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'serviceId', Sort.desc);
    });
  }

  QueryBuilder<ServiceItem, ServiceItem, QAfterSortBy> sortByUnitService() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'unitService', Sort.asc);
    });
  }

  QueryBuilder<ServiceItem, ServiceItem, QAfterSortBy> sortByUnitServiceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'unitService', Sort.desc);
    });
  }

  QueryBuilder<ServiceItem, ServiceItem, QAfterSortBy> sortByUnitaryValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'unitaryValue', Sort.asc);
    });
  }

  QueryBuilder<ServiceItem, ServiceItem, QAfterSortBy>
      sortByUnitaryValueDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'unitaryValue', Sort.desc);
    });
  }

  QueryBuilder<ServiceItem, ServiceItem, QAfterSortBy> sortByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.asc);
    });
  }

  QueryBuilder<ServiceItem, ServiceItem, QAfterSortBy> sortByUpdatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.desc);
    });
  }

  QueryBuilder<ServiceItem, ServiceItem, QAfterSortBy> sortByWorkId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'workId', Sort.asc);
    });
  }

  QueryBuilder<ServiceItem, ServiceItem, QAfterSortBy> sortByWorkIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'workId', Sort.desc);
    });
  }
}

extension ServiceItemQuerySortThenBy
    on QueryBuilder<ServiceItem, ServiceItem, QSortThenBy> {
  QueryBuilder<ServiceItem, ServiceItem, QAfterSortBy> thenByAbbreviation() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'abbreviation', Sort.asc);
    });
  }

  QueryBuilder<ServiceItem, ServiceItem, QAfterSortBy>
      thenByAbbreviationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'abbreviation', Sort.desc);
    });
  }

  QueryBuilder<ServiceItem, ServiceItem, QAfterSortBy> thenByCompanyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'companyId', Sort.asc);
    });
  }

  QueryBuilder<ServiceItem, ServiceItem, QAfterSortBy> thenByCompanyIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'companyId', Sort.desc);
    });
  }

  QueryBuilder<ServiceItem, ServiceItem, QAfterSortBy> thenByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<ServiceItem, ServiceItem, QAfterSortBy> thenByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<ServiceItem, ServiceItem, QAfterSortBy> thenByDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.asc);
    });
  }

  QueryBuilder<ServiceItem, ServiceItem, QAfterSortBy> thenByDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.desc);
    });
  }

  QueryBuilder<ServiceItem, ServiceItem, QAfterSortBy> thenByGoal() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'goal', Sort.asc);
    });
  }

  QueryBuilder<ServiceItem, ServiceItem, QAfterSortBy> thenByGoalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'goal', Sort.desc);
    });
  }

  QueryBuilder<ServiceItem, ServiceItem, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<ServiceItem, ServiceItem, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<ServiceItem, ServiceItem, QAfterSortBy>
      thenByProgressiveTablesId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'progressiveTablesId', Sort.asc);
    });
  }

  QueryBuilder<ServiceItem, ServiceItem, QAfterSortBy>
      thenByProgressiveTablesIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'progressiveTablesId', Sort.desc);
    });
  }

  QueryBuilder<ServiceItem, ServiceItem, QAfterSortBy>
      thenByServiceClassificationDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'serviceClassificationDescription', Sort.asc);
    });
  }

  QueryBuilder<ServiceItem, ServiceItem, QAfterSortBy>
      thenByServiceClassificationDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'serviceClassificationDescription', Sort.desc);
    });
  }

  QueryBuilder<ServiceItem, ServiceItem, QAfterSortBy>
      thenByServiceClassificationId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'serviceClassificationId', Sort.asc);
    });
  }

  QueryBuilder<ServiceItem, ServiceItem, QAfterSortBy>
      thenByServiceClassificationIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'serviceClassificationId', Sort.desc);
    });
  }

  QueryBuilder<ServiceItem, ServiceItem, QAfterSortBy> thenByServiceId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'serviceId', Sort.asc);
    });
  }

  QueryBuilder<ServiceItem, ServiceItem, QAfterSortBy> thenByServiceIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'serviceId', Sort.desc);
    });
  }

  QueryBuilder<ServiceItem, ServiceItem, QAfterSortBy> thenByUnitService() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'unitService', Sort.asc);
    });
  }

  QueryBuilder<ServiceItem, ServiceItem, QAfterSortBy> thenByUnitServiceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'unitService', Sort.desc);
    });
  }

  QueryBuilder<ServiceItem, ServiceItem, QAfterSortBy> thenByUnitaryValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'unitaryValue', Sort.asc);
    });
  }

  QueryBuilder<ServiceItem, ServiceItem, QAfterSortBy>
      thenByUnitaryValueDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'unitaryValue', Sort.desc);
    });
  }

  QueryBuilder<ServiceItem, ServiceItem, QAfterSortBy> thenByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.asc);
    });
  }

  QueryBuilder<ServiceItem, ServiceItem, QAfterSortBy> thenByUpdatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.desc);
    });
  }

  QueryBuilder<ServiceItem, ServiceItem, QAfterSortBy> thenByWorkId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'workId', Sort.asc);
    });
  }

  QueryBuilder<ServiceItem, ServiceItem, QAfterSortBy> thenByWorkIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'workId', Sort.desc);
    });
  }
}

extension ServiceItemQueryWhereDistinct
    on QueryBuilder<ServiceItem, ServiceItem, QDistinct> {
  QueryBuilder<ServiceItem, ServiceItem, QDistinct> distinctByAbbreviation(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'abbreviation', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ServiceItem, ServiceItem, QDistinct> distinctByCompanyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'companyId');
    });
  }

  QueryBuilder<ServiceItem, ServiceItem, QDistinct> distinctByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'createdAt');
    });
  }

  QueryBuilder<ServiceItem, ServiceItem, QDistinct> distinctByDescription(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'description', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ServiceItem, ServiceItem, QDistinct> distinctByGoal() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'goal');
    });
  }

  QueryBuilder<ServiceItem, ServiceItem, QDistinct>
      distinctByProgressiveTablesId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'progressiveTablesId');
    });
  }

  QueryBuilder<ServiceItem, ServiceItem, QDistinct>
      distinctByServiceClassificationDescription({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'serviceClassificationDescription',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ServiceItem, ServiceItem, QDistinct>
      distinctByServiceClassificationId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'serviceClassificationId');
    });
  }

  QueryBuilder<ServiceItem, ServiceItem, QDistinct> distinctByServiceId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'serviceId');
    });
  }

  QueryBuilder<ServiceItem, ServiceItem, QDistinct> distinctByUnitService(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'unitService', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ServiceItem, ServiceItem, QDistinct> distinctByUnitaryValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'unitaryValue');
    });
  }

  QueryBuilder<ServiceItem, ServiceItem, QDistinct> distinctByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'updatedAt');
    });
  }

  QueryBuilder<ServiceItem, ServiceItem, QDistinct> distinctByWorkId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'workId');
    });
  }
}

extension ServiceItemQueryProperty
    on QueryBuilder<ServiceItem, ServiceItem, QQueryProperty> {
  QueryBuilder<ServiceItem, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<ServiceItem, String?, QQueryOperations> abbreviationProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'abbreviation');
    });
  }

  QueryBuilder<ServiceItem, int, QQueryOperations> companyIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'companyId');
    });
  }

  QueryBuilder<ServiceItem, DateTime, QQueryOperations> createdAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'createdAt');
    });
  }

  QueryBuilder<ServiceItem, String, QQueryOperations> descriptionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'description');
    });
  }

  QueryBuilder<ServiceItem, int?, QQueryOperations> goalProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'goal');
    });
  }

  QueryBuilder<ServiceItem, int?, QQueryOperations>
      progressiveTablesIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'progressiveTablesId');
    });
  }

  QueryBuilder<ServiceItem, String?, QQueryOperations>
      serviceClassificationDescriptionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'serviceClassificationDescription');
    });
  }

  QueryBuilder<ServiceItem, int, QQueryOperations>
      serviceClassificationIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'serviceClassificationId');
    });
  }

  QueryBuilder<ServiceItem, int, QQueryOperations> serviceIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'serviceId');
    });
  }

  QueryBuilder<ServiceItem, String, QQueryOperations> unitServiceProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'unitService');
    });
  }

  QueryBuilder<ServiceItem, double, QQueryOperations> unitaryValueProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'unitaryValue');
    });
  }

  QueryBuilder<ServiceItem, DateTime, QQueryOperations> updatedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'updatedAt');
    });
  }

  QueryBuilder<ServiceItem, int, QQueryOperations> workIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'workId');
    });
  }
}
