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
    r'dateTime': PropertySchema(
      id: 0,
      name: r'dateTime',
      type: IsarType.dateTime,
    ),
    r'designationId': PropertySchema(
      id: 1,
      name: r'designationId',
      type: IsarType.long,
    ),
    r'employeeId': PropertySchema(
      id: 2,
      name: r'employeeId',
      type: IsarType.long,
    ),
    r'productionId': PropertySchema(
      id: 3,
      name: r'productionId',
      type: IsarType.long,
    ),
    r'quantity': PropertySchema(
      id: 4,
      name: r'quantity',
      type: IsarType.long,
    ),
    r'scoreServiceItemId': PropertySchema(
      id: 5,
      name: r'scoreServiceItemId',
      type: IsarType.long,
    ),
    r'serviceItemId': PropertySchema(
      id: 6,
      name: r'serviceItemId',
      type: IsarType.long,
    ),
    r'statusSend': PropertySchema(
      id: 7,
      name: r'statusSend',
      type: IsarType.bool,
    ),
    r'totalPartialScore': PropertySchema(
      id: 8,
      name: r'totalPartialScore',
      type: IsarType.double,
    ),
    r'unitaryValue': PropertySchema(
      id: 9,
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
  return bytesCount;
}

void _productionSerialize(
  Production object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDateTime(offsets[0], object.dateTime);
  writer.writeLong(offsets[1], object.designationId);
  writer.writeLong(offsets[2], object.employeeId);
  writer.writeLong(offsets[3], object.productionId);
  writer.writeLong(offsets[4], object.quantity);
  writer.writeLong(offsets[5], object.scoreServiceItemId);
  writer.writeLong(offsets[6], object.serviceItemId);
  writer.writeBool(offsets[7], object.statusSend);
  writer.writeDouble(offsets[8], object.totalPartialScore);
  writer.writeDouble(offsets[9], object.unitaryValue);
}

Production _productionDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Production(
    dateTime: reader.readDateTime(offsets[0]),
    designationId: reader.readLong(offsets[1]),
    employeeId: reader.readLong(offsets[2]),
    productionId: reader.readLong(offsets[3]),
    quantity: reader.readLong(offsets[4]),
    scoreServiceItemId: reader.readLong(offsets[5]),
    serviceItemId: reader.readLong(offsets[6]),
    statusSend: reader.readBool(offsets[7]),
    totalPartialScore: reader.readDouble(offsets[8]),
    unitaryValue: reader.readDouble(offsets[9]),
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
      return (reader.readLong(offset)) as P;
    case 3:
      return (reader.readLong(offset)) as P;
    case 4:
      return (reader.readLong(offset)) as P;
    case 5:
      return (reader.readLong(offset)) as P;
    case 6:
      return (reader.readLong(offset)) as P;
    case 7:
      return (reader.readBool(offset)) as P;
    case 8:
      return (reader.readDouble(offset)) as P;
    case 9:
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
  QueryBuilder<Production, Production, QAfterFilterCondition> dateTimeEqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dateTime',
        value: value,
      ));
    });
  }

  QueryBuilder<Production, Production, QAfterFilterCondition>
      dateTimeGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'dateTime',
        value: value,
      ));
    });
  }

  QueryBuilder<Production, Production, QAfterFilterCondition> dateTimeLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'dateTime',
        value: value,
      ));
    });
  }

  QueryBuilder<Production, Production, QAfterFilterCondition> dateTimeBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'dateTime',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Production, Production, QAfterFilterCondition>
      designationIdEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'designationId',
        value: value,
      ));
    });
  }

  QueryBuilder<Production, Production, QAfterFilterCondition>
      designationIdGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'designationId',
        value: value,
      ));
    });
  }

  QueryBuilder<Production, Production, QAfterFilterCondition>
      designationIdLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'designationId',
        value: value,
      ));
    });
  }

  QueryBuilder<Production, Production, QAfterFilterCondition>
      designationIdBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'designationId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Production, Production, QAfterFilterCondition> employeeIdEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'employeeId',
        value: value,
      ));
    });
  }

  QueryBuilder<Production, Production, QAfterFilterCondition>
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

  QueryBuilder<Production, Production, QAfterFilterCondition>
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

  QueryBuilder<Production, Production, QAfterFilterCondition> employeeIdBetween(
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
      productionIdEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'productionId',
        value: value,
      ));
    });
  }

  QueryBuilder<Production, Production, QAfterFilterCondition>
      productionIdGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'productionId',
        value: value,
      ));
    });
  }

  QueryBuilder<Production, Production, QAfterFilterCondition>
      productionIdLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'productionId',
        value: value,
      ));
    });
  }

  QueryBuilder<Production, Production, QAfterFilterCondition>
      productionIdBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'productionId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Production, Production, QAfterFilterCondition> quantityEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'quantity',
        value: value,
      ));
    });
  }

  QueryBuilder<Production, Production, QAfterFilterCondition>
      quantityGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'quantity',
        value: value,
      ));
    });
  }

  QueryBuilder<Production, Production, QAfterFilterCondition> quantityLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'quantity',
        value: value,
      ));
    });
  }

  QueryBuilder<Production, Production, QAfterFilterCondition> quantityBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'quantity',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Production, Production, QAfterFilterCondition>
      scoreServiceItemIdEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'scoreServiceItemId',
        value: value,
      ));
    });
  }

  QueryBuilder<Production, Production, QAfterFilterCondition>
      scoreServiceItemIdGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'scoreServiceItemId',
        value: value,
      ));
    });
  }

  QueryBuilder<Production, Production, QAfterFilterCondition>
      scoreServiceItemIdLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'scoreServiceItemId',
        value: value,
      ));
    });
  }

  QueryBuilder<Production, Production, QAfterFilterCondition>
      scoreServiceItemIdBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'scoreServiceItemId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Production, Production, QAfterFilterCondition>
      serviceItemIdEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'serviceItemId',
        value: value,
      ));
    });
  }

  QueryBuilder<Production, Production, QAfterFilterCondition>
      serviceItemIdGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'serviceItemId',
        value: value,
      ));
    });
  }

  QueryBuilder<Production, Production, QAfterFilterCondition>
      serviceItemIdLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'serviceItemId',
        value: value,
      ));
    });
  }

  QueryBuilder<Production, Production, QAfterFilterCondition>
      serviceItemIdBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'serviceItemId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Production, Production, QAfterFilterCondition> statusSendEqualTo(
      bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'statusSend',
        value: value,
      ));
    });
  }

  QueryBuilder<Production, Production, QAfterFilterCondition>
      totalPartialScoreEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'totalPartialScore',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Production, Production, QAfterFilterCondition>
      totalPartialScoreGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'totalPartialScore',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Production, Production, QAfterFilterCondition>
      totalPartialScoreLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'totalPartialScore',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Production, Production, QAfterFilterCondition>
      totalPartialScoreBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'totalPartialScore',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
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
  QueryBuilder<Production, Production, QAfterSortBy> sortByDateTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateTime', Sort.asc);
    });
  }

  QueryBuilder<Production, Production, QAfterSortBy> sortByDateTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateTime', Sort.desc);
    });
  }

  QueryBuilder<Production, Production, QAfterSortBy> sortByDesignationId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'designationId', Sort.asc);
    });
  }

  QueryBuilder<Production, Production, QAfterSortBy> sortByDesignationIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'designationId', Sort.desc);
    });
  }

  QueryBuilder<Production, Production, QAfterSortBy> sortByEmployeeId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'employeeId', Sort.asc);
    });
  }

  QueryBuilder<Production, Production, QAfterSortBy> sortByEmployeeIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'employeeId', Sort.desc);
    });
  }

  QueryBuilder<Production, Production, QAfterSortBy> sortByProductionId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'productionId', Sort.asc);
    });
  }

  QueryBuilder<Production, Production, QAfterSortBy> sortByProductionIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'productionId', Sort.desc);
    });
  }

  QueryBuilder<Production, Production, QAfterSortBy> sortByQuantity() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quantity', Sort.asc);
    });
  }

  QueryBuilder<Production, Production, QAfterSortBy> sortByQuantityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quantity', Sort.desc);
    });
  }

  QueryBuilder<Production, Production, QAfterSortBy>
      sortByScoreServiceItemId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'scoreServiceItemId', Sort.asc);
    });
  }

  QueryBuilder<Production, Production, QAfterSortBy>
      sortByScoreServiceItemIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'scoreServiceItemId', Sort.desc);
    });
  }

  QueryBuilder<Production, Production, QAfterSortBy> sortByServiceItemId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'serviceItemId', Sort.asc);
    });
  }

  QueryBuilder<Production, Production, QAfterSortBy> sortByServiceItemIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'serviceItemId', Sort.desc);
    });
  }

  QueryBuilder<Production, Production, QAfterSortBy> sortByStatusSend() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'statusSend', Sort.asc);
    });
  }

  QueryBuilder<Production, Production, QAfterSortBy> sortByStatusSendDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'statusSend', Sort.desc);
    });
  }

  QueryBuilder<Production, Production, QAfterSortBy> sortByTotalPartialScore() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalPartialScore', Sort.asc);
    });
  }

  QueryBuilder<Production, Production, QAfterSortBy>
      sortByTotalPartialScoreDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalPartialScore', Sort.desc);
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
  QueryBuilder<Production, Production, QAfterSortBy> thenByDateTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateTime', Sort.asc);
    });
  }

  QueryBuilder<Production, Production, QAfterSortBy> thenByDateTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateTime', Sort.desc);
    });
  }

  QueryBuilder<Production, Production, QAfterSortBy> thenByDesignationId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'designationId', Sort.asc);
    });
  }

  QueryBuilder<Production, Production, QAfterSortBy> thenByDesignationIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'designationId', Sort.desc);
    });
  }

  QueryBuilder<Production, Production, QAfterSortBy> thenByEmployeeId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'employeeId', Sort.asc);
    });
  }

  QueryBuilder<Production, Production, QAfterSortBy> thenByEmployeeIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'employeeId', Sort.desc);
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

  QueryBuilder<Production, Production, QAfterSortBy> thenByProductionId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'productionId', Sort.asc);
    });
  }

  QueryBuilder<Production, Production, QAfterSortBy> thenByProductionIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'productionId', Sort.desc);
    });
  }

  QueryBuilder<Production, Production, QAfterSortBy> thenByQuantity() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quantity', Sort.asc);
    });
  }

  QueryBuilder<Production, Production, QAfterSortBy> thenByQuantityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quantity', Sort.desc);
    });
  }

  QueryBuilder<Production, Production, QAfterSortBy>
      thenByScoreServiceItemId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'scoreServiceItemId', Sort.asc);
    });
  }

  QueryBuilder<Production, Production, QAfterSortBy>
      thenByScoreServiceItemIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'scoreServiceItemId', Sort.desc);
    });
  }

  QueryBuilder<Production, Production, QAfterSortBy> thenByServiceItemId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'serviceItemId', Sort.asc);
    });
  }

  QueryBuilder<Production, Production, QAfterSortBy> thenByServiceItemIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'serviceItemId', Sort.desc);
    });
  }

  QueryBuilder<Production, Production, QAfterSortBy> thenByStatusSend() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'statusSend', Sort.asc);
    });
  }

  QueryBuilder<Production, Production, QAfterSortBy> thenByStatusSendDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'statusSend', Sort.desc);
    });
  }

  QueryBuilder<Production, Production, QAfterSortBy> thenByTotalPartialScore() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalPartialScore', Sort.asc);
    });
  }

  QueryBuilder<Production, Production, QAfterSortBy>
      thenByTotalPartialScoreDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalPartialScore', Sort.desc);
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
  QueryBuilder<Production, Production, QDistinct> distinctByDateTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dateTime');
    });
  }

  QueryBuilder<Production, Production, QDistinct> distinctByDesignationId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'designationId');
    });
  }

  QueryBuilder<Production, Production, QDistinct> distinctByEmployeeId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'employeeId');
    });
  }

  QueryBuilder<Production, Production, QDistinct> distinctByProductionId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'productionId');
    });
  }

  QueryBuilder<Production, Production, QDistinct> distinctByQuantity() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'quantity');
    });
  }

  QueryBuilder<Production, Production, QDistinct>
      distinctByScoreServiceItemId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'scoreServiceItemId');
    });
  }

  QueryBuilder<Production, Production, QDistinct> distinctByServiceItemId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'serviceItemId');
    });
  }

  QueryBuilder<Production, Production, QDistinct> distinctByStatusSend() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'statusSend');
    });
  }

  QueryBuilder<Production, Production, QDistinct>
      distinctByTotalPartialScore() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'totalPartialScore');
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

  QueryBuilder<Production, DateTime, QQueryOperations> dateTimeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dateTime');
    });
  }

  QueryBuilder<Production, int, QQueryOperations> designationIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'designationId');
    });
  }

  QueryBuilder<Production, int, QQueryOperations> employeeIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'employeeId');
    });
  }

  QueryBuilder<Production, int, QQueryOperations> productionIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'productionId');
    });
  }

  QueryBuilder<Production, int, QQueryOperations> quantityProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'quantity');
    });
  }

  QueryBuilder<Production, int, QQueryOperations> scoreServiceItemIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'scoreServiceItemId');
    });
  }

  QueryBuilder<Production, int, QQueryOperations> serviceItemIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'serviceItemId');
    });
  }

  QueryBuilder<Production, bool, QQueryOperations> statusSendProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'statusSend');
    });
  }

  QueryBuilder<Production, double, QQueryOperations>
      totalPartialScoreProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'totalPartialScore');
    });
  }

  QueryBuilder<Production, double, QQueryOperations> unitaryValueProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'unitaryValue');
    });
  }
}
