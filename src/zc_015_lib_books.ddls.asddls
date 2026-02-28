@Metadata.allowExtensions: true
@Metadata.ignorePropagatedAnnotations: true
@Endusertext: {
  Label: '###GENERATED Core Data Service Entity'
}
@Objectmodel: {
  Sapobjectnodetype.Name: 'Z015_LIB_BOOKS'
}
@AccessControl.authorizationCheck: #MANDATORY
define root view entity ZC_015_LIB_BOOKS
  provider contract TRANSACTIONAL_QUERY
  as projection on ZR_015_LIB_BOOKS
  association [1..1] to ZR_015_LIB_BOOKS as _BaseEntity on $projection.BOOKUUID = _BaseEntity.BOOKUUID
{
  key BookUUID,
  Title,
  Author,
  Category,
  Status,
  BorrowerName,
  BorrowDate,
  @Semantics: {
    User.Createdby: true
  }
  CreatedBy,
  @Semantics: {
    Systemdatetime.Createdat: true
  }
  CreatedAt,
  @Semantics: {
    User.Localinstancelastchangedby: true
  }
  LastChangedBy,
  @Semantics: {
    Systemdatetime.Localinstancelastchangedat: true
  }
  LastChangedAt,
  @Semantics: {
    Systemdatetime.Lastchangedat: true
  }
  LocalLastChangedAt,
  _BaseEntity
}
