select p.firstname, p.lastname, a.city, a.state
from Person p
left join address a on P.personId = a.personId;
