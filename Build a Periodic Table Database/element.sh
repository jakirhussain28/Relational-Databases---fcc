#! /bin/bash

PSQL="psql --username=freecodecamp --dbname=periodic_table -t --no-align -c"

# No argument case
if [[ -z $1 ]]
then
  echo "Please provide an element as an argument."
  exit
fi
#conditions
# Determine if input is atomic number
if [[ $1 =~ ^[0-9]+$ ]]
then
  ELEMENT=$($PSQL "SELECT e.atomic_number, symbol, name, type, atomic_mass, melting_point_celsius, boiling_point_celsius 
                   FROM elements e 
                   JOIN properties p ON e.atomic_number = p.atomic_number 
                   JOIN types t ON p.type_id = t.type_id 
                   WHERE e.atomic_number = $1;")
else
  ELEMENT=$($PSQL "SELECT e.atomic_number, symbol, name, type, atomic_mass, melting_point_celsius, boiling_point_celsius 
                   FROM elements e 
                   JOIN properties p ON e.atomic_number = p.atomic_number 
                   JOIN types t ON p.type_id = t.type_id 
                   WHERE symbol = INITCAP('$1') OR name = INITCAP('$1');")
fi
#ele in db
# If not found
if [[ -z $ELEMENT ]]
then
  echo "I could not find that element in the database."
  exit
fi

# Parse result and display
IFS='|' read ATOMIC_NUMBER SYMBOL NAME TYPE MASS MELT BOIL <<< "$ELEMENT"
echo "The element with atomic number $ATOMIC_NUMBER is $NAME ($SYMBOL). It's a $TYPE, with a mass of $MASS amu. $NAME has a melting point of $MELT celsius and a boiling point of $BOIL celsius."
