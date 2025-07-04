#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
cat games.csv | while IFS=',' read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
  if [[ $YEAR != "year" ]]
  then
    # Insert winner if not exists
    if [[ -z $($PSQL "SELECT team_id FROM teams WHERE name='$WINNER';") ]]
    then
      echo $($PSQL "INSERT INTO teams(name) VALUES('$WINNER');")
    fi

    # Insert opponent if not exists
    if [[ -z $($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT';") ]]
    then
      echo $($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT');")
    fi

    # Get team IDs
    WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER';")
    OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT';")

    # Insert game
    echo $($PSQL "INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals)
    VALUES($YEAR, '$ROUND', $WINNER_ID, $OPPONENT_ID, $WINNER_GOALS, $OPPONENT_GOALS);")
  fi
done