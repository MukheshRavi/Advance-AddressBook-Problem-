--UC13 Checking new table structure
use addressBookService;
--UC6 Retrieve person by city or state
select c.firstName,c.LastName,a.city from ContactDetails c inner join AddressDetails a on
 c.FirstName=a.FirstName and c.LastName=a.LastName where city='Parvathipuram';
 --UC7 Count Contacts based on city
 select count(City) from AddressDetails;
 --UC8 OrderBy First Name for a particular city
 select c.firstName,c.LastName,a.city from ContactDetails c inner join AddressDetails a on
 c.FirstName=a.FirstName and c.LastName=a.LastName where city='Parvathipuram' order by c.FirstName;
 --UC10 count Contacts based on ContactType
  select count(ContactId) from BookNameContactType;