# Module 9 Challenge

## <p style="color:#CC6600">Background / Scenario</p> 

It’s been two weeks since you were hired as a new data engineer at Pewlett Hackard (a fictional company). Your first major task is to do a research project about people whom the company employed during the 1980s and 1990s. All that remains of the employee database from that period are six CSV files.

For this project, you’ll design the tables to hold the data from the CSV files, import the CSV files into a SQL database, and then answer questions about the data. That is, you’ll perform data modeling, data engineering, and data analysis, respectively. 

## <p style="color:#CC6600">Data Modeling</p> 

Inspect the CSV files, and then sketch an Entity Relationship Diagram of the tables.
<br>

<ins>Entity Relationship Diagram</ins>:<img src="images/uta_icon_checkmark.svg" width="30" height="12">  <br>
![Diagram](images/EntityRelationshipDiagram.png)
<br>

## <p style="color:#CC6600">Data Engineering</p> 

1. Use the provided information to create a table schema for each of the six CSV files. Be sure to do the following:

   - Remember to specify the data types, primary keys, foreign keys, and other constraints.

   - For the primary keys, verify that the column is unique. Otherwise, create a composite key, which takes two primary keys to uniquely identify a row.

   - Be sure to create the tables in the correct order to handle the foreign keys.

2. Import each CSV file into its corresponding SQL table.
<br>

## <p style="color:#CC6600">Data Analysis</p> 

1. List the employee number, last name, first name, sex, and salary of each employee.

2. List the first name, last name, and hire date for the employees who were hired in 1986.

3. List the manager of each department along with their department number, department name, employee number, last name, and first name.

4. List the department number for each employee along with that employee’s employee number, last name, first name, and department name.

5. List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

6. List each employee in the Sales department, including their employee number, last name, and first name.

7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).


## <p style="color:#CC6600">References</p>

Data generated by <a href="https://mockaroo.com" target="_blank">Mockaroo, LLC</a> , (2022). Realistic Data Generator. Data for this dataset was generated by edX Boot Camps LLC, and is intended for educational purposes only.  📚  
<br>
<br>
<br>
![UTlogo](images/utaustin-mccombs.png)      <img src="images/edx-logo-elm.svg" width="200" height="80"> 