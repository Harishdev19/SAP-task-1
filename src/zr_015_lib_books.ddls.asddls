@AccessControl.authorizationCheck: #MANDATORY
@Metadata.allowExtensions: true
@ObjectModel.sapObjectNodeType.name: 'Z015_LIB_BOOKS'
@EndUserText.label: '###GENERATED Core Data Service Entity'
define root view entity ZR_015_LIB_BOOKS
  as select from Z015_LIB_BOOKS
{
  key book_uuid as BookUUID,
  title as Title,
  author as Author,
  category as Category,
  status as Status,
  borrower_name as BorrowerName,
  borrow_date as BorrowDate,
  @Semantics.user.createdBy: true
  created_by as CreatedBy,
  @Semantics.systemDateTime.createdAt: true
  created_at as CreatedAt,
  @Semantics.user.localInstanceLastChangedBy: true
  last_changed_by as LastChangedBy,
  @Semantics.systemDateTime.localInstanceLastChangedAt: true
  last_changed_at as LastChangedAt,
  @Semantics.systemDateTime.lastChangedAt: true
  local_last_changed_at as LocalLastChangedAt
}
