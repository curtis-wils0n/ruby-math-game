# Planning

## Example Prompt

```txt
Player 1: What does 5 plus 3 equal?
> 9
Player 1: Seriously? No!
P1: 2/3 vs P2: 3/3
----- NEW TURN -----
Player 2: Wat does 2 plus 6 equal?
> 8
Player 2: YES! You are correct.
P1: 2/3 vs P2: 3/3
----- NEW TURN -----
... some time later ...
Player 1 wins with a score of 1/3
----- GAME OVER -----
Good bye!
```

## Task 1: Extract Nouns for Classes
Player
Turn

## Task 2: Write their roles

Player
- The Player class represents the users engaging with the game, and will store data such as their score, and include actions such as answering the given question.
- Player will allow user input to submit an answer proposed by the Turn

Turn
- A Turn represents one question being asked, a player answering, a response being given (correct or incorrect), and the overall score being displayed. Turn will store the ongoing results as a state. This class is the core game loop, where each instance is the other players turn. 
- This class handles who the _current player_ is.
- This class will pose a question to the Player class
