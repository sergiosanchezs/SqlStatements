use AdventureWorks2012;
select * from dbo.data;

use AdventureWorks2012;
select * from dbo.data
where soldDate between '8/1/2019' and '8/31/2019'
order by soldDate;

use AdventureWorks2012;
select count(*) as AugustNumSales from dbo.data
where soldDate between '8/1/2019' and '8/31/2019';

use AdventureWorks2012;
select count(*) as NumSales from dbo.data
where soldDate > '8/1/2019';

use AdventureWorks2012;
select count(*) as NumSales from dbo.data
where soldDate > '8/16/2019';

use AdventureWorks2012;
select count(*) as NumSales from dbo.data
where soldDate < '8/16/2019';

use AdventureWorks2012;
select month(solddate) as MonthDate, count(solddate)
from dbo.data
group by month(solddate);

use AdventureWorks2012;
select [type], avg([sold price]) as average
from data
group by [type];

use AdventureWorks2012;
select [type], description, avg([sold price]) as average
from data
group by [type], description;

use AdventureWorks2012;
select [type], description, avg([sold price]) as average
from data
group by [type], description
order by avg([sold price]) desc;

use AdventureWorks2012;
select [type], description, avg([sold price]) as avgPrice, avg(bedroom) as avgBedrooms
from data
group by [type], description
order by avg([sold price]) desc;

use AdventureWorks2012;
select [type], description, avg([sold price]) as avgPrice, avg(bedroom) as avgBedrooms
from data
where solddate > '9/1/2019'
group by [type], description
order by avg([sold price]) desc;

------------------------------------------------------------------------
use AdventureWorks2012;
select [type], description, avg([sold price]) as avgPrice, avg(bedroom) as avgBedrooms
from data
where solddate between '9/1/2019' and '9/15/2019'
group by [type], description
order by avg([sold price]) desc;

use AdventureWorks2012;
select [type], description, avg([sold price]) as avgPrice, avg(bedroom) as avgBedrooms
from data
where solddate between '9/16/2019' and '9/30/2019'
group by [type], description
order by avg([sold price]) desc;

---------------------------------------------------------
use AdventureWorks2012;
select count(type) as cntType, [type], description, 
	avg([sold price]) as avgPrice, 
	avg(bedroom) as avgBedrooms
from data
where solddate > '9/1/2019'
group by [type], description
order by avg([sold price]);

---------------------------------------------------
use AdventureWorks2012;
select count(type) as cntType, [type], description, 
	avg([sold price]) as avgPrice, 
	avg(bedroom) as avgBedrooms
from data
where solddate between '9/1/2019' and '9/15/2019'
group by [type], description
order by avg([sold price]);

use AdventureWorks2012;
select count(type) as cntType, [type], description, 
	avg([sold price]) as avgPrice, 
	avg(bedroom) as avgBedrooms
from data
where solddate between '9/16/2019' and '9/30/2019'
group by [type], description
order by avg([sold price]);
-----------------------------------------------------------
-- house street name starts with letter A
use AdventureWorks2012;
select * from data
where left(streetname, 1) = 'A';

use AdventureWorks2012;
select left(streetname,1) as initial, count(*) as CountOfInitial
from data
group by left(streetname,1);




































