<h1> Blackjack Game </h1>

<h2> How to Use </h2>
This is a very simple, one-file game, intended to be played from the command line. It already contains the "run_game" instruction (which is a loop method) inside the code, so simply launching the game file from the command line should kick you off. The steps to get it running are:
  
  1. Download the blackjack.rb file to your computer.
  2. Launch terminal.
  3. Make sure you have Ruby installed (you can check this with <code>$ ruby -v</code>).
  4. Navigate to the folder containing blackjack.rb via your terminal.
  5. Launch the file by typing $ruby blackjack.rb


<h2> How to Play </h2>



<h2> How the code is structured </h2>

There are four methods:
1. random_card: This picks a value at random from a list of card values.
2. move: This asks the player for a move.  If they enter hit or stick, it returns the move. Otherwise,it keeps asking.
3. score: Translates the string of the card into a value
4. run_game: the loop which pulls in all the other methods and sets win/loss/break conditions.
