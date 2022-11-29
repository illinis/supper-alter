// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../production_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

extension GetProductionCollection on Isar {
  IsarCollection<Production> get productions => this.collection();
}

const ProductionSchema = CollectionSchema(
  name: r'Production',
  id: -1526698614274401696,
  properties: {
    r'date': PropertySchema(
      id: 0,
      name: r'date',
      type: IsarType.dateTime,
    ),
    r'designation_id': PropertySchema(
      id: 1,
      name: r'designation_id',
      type: IsarType.long,
    ),
    r'employeeIdList': PropertySchema(
      id: 2,
      name: r'employeeIdList',
      type: IsarType.stringList,
    ),
    r'finalTaskMensuration': PropertySchema(
      id: 3,
      name: r'finalTaskMensuration',
      type: IsarType.double,
    ),
    r'service_item_id': PropertySchema(
      id: 4,
      name: r'service_item_id',
      type: IsarType.long,
    ),
    r'taskName': PropertySchema(
      id: 5,
      name: r'taskName',
      type: IsarType.string,
    ),
    r'unitaryValue': PropertySchema(
      id: 6,
      name: r'unitaryValue',
      type: IsarType.double,
    )
  },
  estimateSize: _productionEstimateSize,
  serialize: _productionSerialize,
  deserialize: _productionDeserialize,
  deserializeProp: _productionDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _productionGetId,
  getLinks: _productionGetLinks,
  attach: _productionAttach,
  version: '3.0.5',
);

int _productionEstimateSize(
  Production object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.employeeIdList.length * 3;
  {
    for (var i = 0; i < object.employeeIdList.length; i++) {
      final value = object.employeeIdList[i];
      bytesCount += value.length * 3;
    }
  }
  bytesCount += 3 + object.taskName.length * 3;
  return bytesCount;
}

void _productionSerialize(
  Production object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDateTime(offsets[0], object.date);
  writer.writeLong(offsets[1], object.designation_id);
  writer.writeStringList(offsets[2], object.employeeIdList);
  writer.writeDouble(offsets[3], object.finalTaskMensuration);
  writer.writeLong(offsets[4], object.service_item_id);
  writer.writeString(offsets[5], object.taskName);
  writer.writeDouble(offsets[6], object.unitaryValue);
}

Production _productionDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Production(
    date: reader.readDateTime(offsets[0]),
    designation_id: reader.readLong(offsets[1]),
    employeeIdList: reader.readStringList(offsets[2]) ?? [],
    finalTaskMensuration: reader.readDouble(offsets[3]),
    service_item_id: reader.readLong(offsets[4]),
    taskName: reader.readString(offsets[5]),
    unitaryValue: reader.readDouble(offsets[6]),
  );
  return object;
}

P _productionDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDateTime(offset)) as P;
    case 1:
      return (reader.readLong(offset)) as P;
    case 2:
      return (reader.readStringList(offset) ?? []) as P;
    case 3:
      return (reader.readDouble(offset)) as P;
    case 4:
      return (reader.readLong(offset)) as P;
    case 5:
      return (reader.readString(offset)) as P;
    case 6:
      return (reader.readDouble(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _productionGetId(Production object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _productionGetLinks(Production object) {
  return [];
}

void _productionAttach(IsarCollection<dynamic> col, Id id, Production object) {}

extension ProductionQueryWhereSort
    on QueryBuilder<Production, Production, QWhere> {
  QueryBuilder<Production, Production, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension ProductionQueryWhere
    on QueryBuilder<Production, Production, QWhereClause> {
  QueryBuilder<Production, Production, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Production, Production, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<Production, Production, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Production, Production, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Production, Production, QAfterWhereClause> idBetween(
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

extension ProductionQueryFilter
    on QueryBuilder<Production, Production, QFilterCondition> {
  QueryBuilder<Production, Production, QAfterFilterCondition> dateEqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'date',
        value: value,
      ));
    });
  }

  QueryBuilder<Production, Production, QAfterFilterCondition> dateGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'date',
        value: value,
      ));
    });
  }

  QueryBuilder<Production, Production, QAfterFilterCondition> dateLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'date',
        value: value,
      ));
    });
  }

  QueryBuilder<Production, Production, QAfterFilterCondition> dateBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'date',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Production, Production, QAfterFilterCondition>
      designation_idEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'designation_id',
        value: value,
      ));
    });
  }

  QueryBuilder<Production, Production, QAfterFilterCondition>
      designation_idGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'designation_id',
        value: value,
      ));
    });
  }

  QueryBuilder<Production, Production, QAfterFilterCondition>
      designation_idLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'designation_id',
        value: value,
      ));
    });
  }

  QueryBuilder<Production, Production, QAfterFilterCondition>
      designation_idBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'designation_id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Production, Production, QAfterFilterCondition>
      employeeIdListElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'employeeIdList',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Production, Production, QAfterFilterCondition>
      employeeIdListElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'employeeIdList',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Production, Production, QAfterFilterCondition>
      employeeIdListElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'employeeIdList',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Production, Production, QAfterFilterCondition>
      employeeIdListElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'employeeIdList',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Production, Production, QAfterFilterCondition>
      employeeIdListElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'employeeIdList',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Production, Production, QAfterFilterCondition>
      employeeIdListElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'employeeIdList',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Production, Production, QAfterFilterCondition>
      employeeIdListElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'employeeIdList',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Production, Production, QAfterFilterCondition>
      employeeIdListElementMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'employeeIdList',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Production, Production, QAfterFilterCondition>
      employeeIdListElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'employeeIdList',
        value: '',
      ));
    });
  }

  QueryBuilder<Production, Production, QAfterFilterCondition>
      employeeIdListElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'employeeIdList',
        value: '',
      ));
    });
  }

  QueryBuilder<Production, Production, QAfterFilterCondition>
      employeeIdListLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'employeeIdList',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<Production, Production, QAfterFilterCondition>
      employeeIdListIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'employeeIdList',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<Production, Production, QAfterFilterCondition>
      employeeIdListIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'employeeIdList',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Production, Production, QAfterFilterCondition>
      employeeIdListLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'employeeIdList',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<Production, Production, QAfterFilterCondition>
      employeeIdListLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'employeeIdList',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Production, Production, QAfterFilterCondition>
      employeeIdListLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'employeeIdList',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<Production, Production, QAfterFilterCondition>
      finalTaskMensurationEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'finalTaskMensuration',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Production, Production, QAfterFilterCondition>
      finalTaskMensurationGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'finalTaskMensuration',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Production, Production, QAfterFilterCondition>
      finalTaskMensurationLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'finalTaskMensuration',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Production, Production, QAfterFilterCondition>
      finalTaskMensurationBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'finalTaskMensuration',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Production, Production, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Production, Production, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<Production, Production, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Production, Production, QAfterFilterCondition> idBetween(
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

  QueryBuilder<Production, Production, QAfterFilterCondition>
      service_item_idEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'service_item_id',
        value: value,
      ));
    });
  }

  QueryBuilder<Production, Production, QAfterFilterCondition>
      service_item_idGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'service_item_id',
        value: value,
      ));
    });
  }

  QueryBuilder<Production, Production, QAfterFilterCondition>
      service_item_idLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'service_item_id',
        value: value,
      ));
    });
  }

  QueryBuilder<Production, Production, QAfterFilterCondition>
      service_item_idBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'service_item_id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Production, Production, QAfterFilterCondition> taskNameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'taskName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Production, Production, QAfterFilterCondition>
      taskNameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'taskName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Production, Production, QAfterFilterCondition> taskNameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'taskName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Production, Production, QAfterFilterCondition> taskNameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'taskName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Production, Production, QAfterFilterCondition>
      taskNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'taskName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Production, Production, QAfterFilterCondition> taskNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'taskName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Production, Production, QAfterFilterCondition> taskNameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'taskName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Production, Production, QAfterFilterCondition> taskNameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'taskName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Production, Production, QAfterFilterCondition>
      taskNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'taskName',
        value: '',
      ));
    });
  }

  QueryBuilder<Production, Production, QAfterFilterCondition>
      taskNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'taskName',
        value: '',
      ));
    });
  }

  QueryBuilder<Production, Production, QAfterFilterCondition>
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

  QueryBuilder<Production, Production, QAfterFilterCondition>
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

  QueryBuilder<Production, Production, QAfterFilterCondition>
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

  QueryBuilder<Production, Production, QAfterFilterCondition>
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
}

extension ProductionQueryObject
    on QueryBuilder<Production, Production, QFilterCondition> {}

extension ProductionQueryLinks
    on QueryBuilder<Production, Production, QFilterCondition> {}

extension ProductionQuerySortBy
    on QueryBuilder<Production, Production, QSortBy> {
  QueryBuilder<Production, Production, QAfterSortBy> sortByDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.asc);
    });
  }

  QueryBuilder<Production, Production, QAfterSortBy> sortByDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.desc);
    });
  }

  QueryBuilder<Production, Production, QAfterSortBy> sortByDesignation_id() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'designation_id', Sort.asc);
    });
  }

  QueryBuilder<Production, Production, QAfterSortBy>
      sortByDesignation_idDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'designation_id', Sort.desc);
    });
  }

  QueryBuilder<Production, Production, QAfterSortBy>
      sortByFinalTaskMensuration() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'finalTaskMensuration', Sort.asc);
    });
  }

  QueryBuilder<Production, Production, QAfterSortBy>
      sortByFinalTaskMensurationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'finalTaskMensuration', Sort.desc);
    });
  }

  QueryBuilder<Production, Production, QAfterSortBy> sortByService_item_id() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'service_item_id', Sort.asc);
    });
  }

  QueryBuilder<Production, Production, QAfterSortBy>
      sortByService_item_idDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'service_item_id', Sort.desc);
    });
  }

  QueryBuilder<Production, Production, QAfterSortBy> sortByTaskName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'taskName', Sort.asc);
    });
  }

  QueryBuilder<Production, Production, QAfterSortBy> sortByTaskNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'taskName', Sort.desc);
    });
  }

  QueryBuilder<Production, Production, QAfterSortBy> sortByUnitaryValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'unitaryValue', Sort.asc);
    });
  }

  QueryBuilder<Production, Production, QAfterSortBy> sortByUnitaryValueDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'unitaryValue', Sort.desc);
    });
  }
}

extension ProductionQuerySortThenBy
    on QueryBuilder<Production, Production, QSortThenBy> {
  QueryBuilder<Production, Production, QAfterSortBy> thenByDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.asc);
    });
  }

  QueryBuilder<Production, Production, QAfterSortBy> thenByDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.desc);
    });
  }

  QueryBuilder<Production, Production, QAfterSortBy> thenByDesignation_id() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'designation_id', Sort.asc);
    });
  }

  QueryBuilder<Production, Production, QAfterSortBy>
      thenByDesignation_idDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'designation_id', Sort.desc);
    });
  }

  QueryBuilder<Production, Production, QAfterSortBy>
      thenByFinalTaskMensuration() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'finalTaskMensuration', Sort.asc);
    });
  }

  QueryBuilder<Production, Production, QAfterSortBy>
      thenByFinalTaskMensurationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'finalTaskMensuration', Sort.desc);
    });
  }

  QueryBuilder<Production, Production, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Production, Production, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Production, Production, QAfterSortBy> thenByService_item_id() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'service_item_id', Sort.asc);
    });
  }

  QueryBuilder<Production, Production, QAfterSortBy>
      thenByService_item_idDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'service_item_id', Sort.desc);
    });
  }

  QueryBuilder<Production, Production, QAfterSortBy> thenByTaskName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'taskName', Sort.asc);
    });
  }

  QueryBuilder<Production, Production, QAfterSortBy> thenByTaskNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'taskName', Sort.desc);
    });
  }

  QueryBuilder<Production, Production, QAfterSortBy> thenByUnitaryValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'unitaryValue', Sort.asc);
    });
  }

  QueryBuilder<Production, Production, QAfterSortBy> thenByUnitaryValueDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'unitaryValue', Sort.desc);
    });
  }
}

extension ProductionQueryWhereDistinct
    on QueryBuilder<Production, Production, QDistinct> {
  QueryBuilder<Production, Production, QDistinct> distinctByDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'date');
    });
  }

  QueryBuilder<Production, Production, QDistinct> distinctByDesignation_id() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'designation_id');
    });
  }

  QueryBuilder<Production, Production, QDistinct> distinctByEmployeeIdList() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'employeeIdList');
    });
  }

  QueryBuilder<Production, Production, QDistinct>
      distinctByFinalTaskMensuration() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'finalTaskMensuration');
    });
  }

  QueryBuilder<Production, Production, QDistinct> distinctByService_item_id() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'service_item_id');
    });
  }

  QueryBuilder<Production, Production, QDistinct> distinctByTaskName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'taskName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Production, Production, QDistinct> distinctByUnitaryValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'unitaryValue');
    });
  }
}

extension ProductionQueryProperty
    on QueryBuilder<Production, Production, QQueryProperty> {
  QueryBuilder<Production, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Production, DateTime, QQueryOperations> dateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'date');
    });
  }

  QueryBuilder<Production, int, QQueryOperations> designation_idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'designation_id');
    });
  }

  QueryBuilder<Production, List<String>, QQueryOperations>
      employeeIdListProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'employeeIdList');
    });
  }

  QueryBuilder<Production, double, QQueryOperations>
      finalTaskMensurationProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'finalTaskMensuration');
    });
  }

  QueryBuilder<Production, int, QQueryOperations> service_item_idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'service_item_id');
    });
  }

  QueryBuilder<Production, String, QQueryOperations> taskNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'taskName');
    });
  }

  QueryBuilder<Production, double, QQueryOperations> unitaryValueProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'unitaryValue');
    });
  }
}
