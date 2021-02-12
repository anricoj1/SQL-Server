# <a href="https://www.pluralsight.com/guides/introduction-tsql-querying">Transact SQL</a>

## Categories of T-SQL Statements ##
<ul>
    <li>There are 3 major types of T-SQL Statements</li>
        <ul>
            <li>Data Manipulation Language (DML) is the set of T-SQL statements that are used to query and modify data</li>
                <ul>
                    <li>SELECT</li>
                    <li>INSERT, UPDATE, and DELETE</li>
                </ul>
            <li>Data Definition Language (DDL) is the set of T-SQL statements that are used to define database objects such as</li>
                <ul>
                    <li>CREATE</li>
                    <li>ALTER</li>
                    <li>DROP</li>
                </ul>
            <li>Data Control Language (DCL) is the set of T-SQL statements used to manage security permissions for users and objects</li>
                <ul>
                    <li>GRANT</li>
                    <li>REVOKE</li>
                    <li>DENY</li>
                </ul>
        </ul>
</ul>
<hr />

## T-SQL Language Elements
T-SQL has its own syntax and commands to interact with the database.
<ul>
    <li>Predicates to filter rows</li>
    <li>Operators to perform comparisons</li>
    <li>Functions and expressions to manipulate data or retrieve system information</li>
    <li>Comments to document code</li>
    <h2>1. Predicates</h2>
    <ul>
        <li>Expressions that evaluater to True, False, or Unknownm</li>
        <li>Often used in the search condition of WHERE caluses and HAVING clauses</li>
        <code>SELECT * FROM PEOPLE WHERE FIRST_NAME = 'JOHN'</code>
    </ul>
    <h2>2. Functions</h2>
     Functions in SQL Server are either deterministic or non-deterministic.
     <ul>
        <li>Deterministic functions always return the same result any time they are called by using a specific set of input values</li>
        <li>Non-Deterministic functions return different results every time they are called</li>
        <li>Common functions are</li>
        <ul>
            <li>String Functions: Substring, Replace</li>
            <li>Date Functions: Getdate, Dateadd</li>
            <li>Aggregate Functions: Min, Max, Sum</li>
            <li>Mathematical Functions: Round, Floor, Ciel</li>
        </ul>
     </ul>
     <h2>3. Variables</h2>
     <p>Variables are used to temporarily store the value of a specific data type. To create a local variable in T-SQL, you must give a name, data type, and init value.</p>
     <code>DECLARE @FirstName VARCHAR(30) = 'John%';</code>
     <h2>4. Expressions</h2>
     <p>Expressions are combinations of symbols and operators that the SQL Server Database evaluates to obtain a single data value. They can be used to select statements, CASE expressions or where statements</p>
     <code>SELECT FirstName, Age+1 FROM Person;</code>
     <h2>5. Comments</h2>
     <p>Comments can be used to document code in T-SQL.</p>
     <ul>
        <li>Single Line: <code>-- b</code></li>
        <li>Multi Line: <code> / this is a commnent block /</code></li>
     </ul>
     <h2>6. Batch Separators</h2>
     <p>Batch separators combine one or more SQL Server statements that are sent to the engine as one set of statements. The GO statement is used at batch sepatator in SQL Server. Therefore, any varibales declared in the current batch will not be visible in the next batch</p>
</ul>


## Thinking Sets
What is a Set?
<ul>
    <li>A collection of distinct objects considered as a whole</li>
    Although a table is represented as columns and rows, to understand how to query data you need to picture a table as a set.
    <ul>
        <li>In SQL, you interact with the whole set at once. That is, when fetching data from a set, the database engine won't go through each row sequentially, instead, it will query the whole table at once</li>
        <li>SQL is a declatative language</li>
    </ul>
</ul>
