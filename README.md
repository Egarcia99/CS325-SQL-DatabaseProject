# CS325 Database Design Project - Fall 2022

Welcome to the GitHub repository for our Database Design project, a comprehensive SQL project developed during the Fall 2022 semester for CS 325 at California Polytechnic University of Humboldt by Jake Freed and Emilyo Garcia under Professor Asadinia.

## Project Overview

This project involves designing and implementing a relational database for a music streaming service, adhering to specific business rules that guide its functionality. It includes the creation of a database schema, population of the database with relevant data, and the execution of various SQL queries and reports to demonstrate the practical application of the database.

### Business Rules

1. A user cannot use the same account to play music on two devices simultaneously.
2. Users can play downloaded music offline.
3. An album must contain at least one song.
4. Users are not required to follow back a user who followed them.
5. A user may only have one email and one phone number tied to their account.
6. A playlist may have only one creator.

## Repository Contents

- `325biz-rules.pdf`: Contains the business rules for the database.
- `325design.sql`: The SQL script for creating all necessary tables for the database.
- `325populate.sql`: Populates the database tables with data, to be run after `325design.sql`.
- `325queries.sql`: A custom set of potentially useful SQL queries for the database.
- `325report1.sql`, `325report2.sql`, `325report3.sql`: SQL scripts for generating reports.
- `325show-contents.sql`: SQL script to show the contents of all tables in the database.
- `325model.pdf`: Contains the Entity-Relationship Diagram (ERD) and attribute list for the database entities.
- `325report1-results.txt`, `325report2-results.txt`, `325report3-results.txt`: Results from the report SQL scripts.
- `325query-results.txt`: Results from the custom set of queries.
- `325result-contents.txt`: Output from the `325show-contents.sql` script, showing the contents of all tables.
- `325design-rs.txt`: Detailed relational structures of the database, providing insights into the relationships between tables.

## Setting Up the Database

To set up a new instance of the database:

1. **Initialize the Schema**: Run `325design.sql` to create the database schema.
2. **Populate the Database**: Execute `325populate.sql` to fill the tables with data.

After setup, feel free to run any of the query, report, or show-contents files to interact with the database.

## Goals and Discussion

This project aimed to demonstrate our understanding of database design principles, SQL scripting, and the application of theoretical knowledge to practical scenarios. For more details on our goals and reflections on the project, please refer to the included PDF documents.

Thank you for visiting our Database Design project repository. It serves not only as a comprehensive showcase of our SQL proficiency but also as a detailed record of our ability to develop a functional database system from the ground up.
