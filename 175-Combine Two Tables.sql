-- Table: Person

-- +-------------+---------+
-- | Column Name | Type    |
-- +-------------+---------+
-- | PersonId    | int     |
-- | FirstName   | varchar |
-- | LastName    | varchar |
-- +-------------+---------+
-- PersonId is the primary key column for this table.
-- Table: Address

-- +-------------+---------+
-- | Column Name | Type    |
-- +-------------+---------+
-- | AddressId   | int     |
-- | PersonId    | int     |
-- | City        | varchar |
-- | State       | varchar |
-- +-------------+---------+
-- AddressId is the primary key column for this table.

-- Write a SQL query for a report that provides the following information for each person in the Person table, regardless if there is an address for each of those people:

-- FirstName, LastName, City, State

# Write your MySQL query statement below
select Person.FirstName, Person.LastName, Address.City, Address.State
from Person LEFT OUTER JOIN Address
ON Person.PersonId = Address.PersonId;


# 注意：在使用OUTER JOIN时候，必须使用RIGHT（右外联）或LEFT（左外联）关键字指定包括其所有行的表
# RIGHT指出的是OUTER JOIN右边的表，而LEFT指出的是OUTER JOIN右边的表
# 上面的语句使用LEFT OUTER JOIN 从FROM子句左边的表（Person表）中选择所有行