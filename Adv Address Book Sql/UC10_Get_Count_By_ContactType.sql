use addressBookService;
update address_book set AddressBookName='Mukhesh',ContactType='Home' where FirstName='Mukhesh';
/*Get count*/
select ContactType,Count(ContactType) from address_book group by ContactType;
