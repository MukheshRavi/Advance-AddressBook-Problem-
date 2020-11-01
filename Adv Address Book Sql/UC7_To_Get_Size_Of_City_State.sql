use addressBookService;
/*Find size of address book by city*/
select City,count(City) as CityCount from address_book group by City;
/*Find size of address book by State*/
select State,count(State) as StateCount from address_book group by State;