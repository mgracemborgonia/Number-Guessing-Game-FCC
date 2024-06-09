#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

echo "Enter your username:"
read USERNAME

USERNAME_SELECT=$($PSQL "SELECT username FROM users WHERE username = '$USERNAME'")
GAMES_PLAYED=$($PSQL "SELECT COUNT(*) FROM users INNER JOIN games USING(user_id) WHERE username = '$USERNAME'")
BEST_GAME=$($PSQL "SELECT MIN(number_of_guesses) FROM users INNER JOIN games USING(user_id) WHERE username = '$USERNAME'")
# if username not found
if [[ -z $USERNAME_SELECT ]]
then
  INSERT_USERNAME=$($PSQL "INSERT INTO users(username) VALUES('$USERNAME')")
  echo "Welcome, $USERNAME! It looks like this is your first time here."
else
  echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi

RANDOM_NUMBER=$(( ( $RANDOM % 1000 ) + 1 ))
ENTER_GUESS=1
echo -e "\nGuess the secret number between 1 and 1000:"

while read NUMBER
do
# if number is not an integer
if [[ ! $NUMBER =~ ^[0-9]+$ ]]
then
  echo -e "\nThat is not an integer, guess again:"
else
  # if number is less than a random number
  if [[ $NUMBER -lt $RANDOM_NUMBER ]]
  then
    echo -e "\nIt's higher than that, guess again:"
  # if number is greater than a random number
  elif [[ $NUMBER -gt $RANDOM_NUMBER ]]
  then
    echo -e "\nIt's lower than that, guess again:"
  else
    break;
  fi
fi
ENTER_GUESS=$(( $ENTER_GUESS + 1 ))
done
# number of guesses
if [[ $ENTER_GUESS == 1 ]]
then
  echo "You guessed it in $ENTER_GUESS tries. The secret number was $RANDOM_NUMBER. Nice job!"
else
  echo "You guessed it in $ENTER_GUESS tries. The secret number was $RANDOM_NUMBER. Nice job!"
fi

USER_ID=$($PSQL "SELECT user_id FROM users WHERE username = '$USERNAME'")
INSERT_BEST_GAME=$($PSQL "INSERT INTO games(number_of_guesses,secret_number,user_id) VALUES($ENTER_GUESS,$RANDOM_NUMBER,$USER_ID)")
