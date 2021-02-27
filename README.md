<h1> Blackjack Game </h1>

<h2> How to Use </h2>
This is a very simple, one-file game - less than 100 lines all in - created in Ruby and intended to be played from the command line/terminal. It already contains the "run_game" instruction (which is a loop method) inside the code, so simply launching the game file ("blackjack.rb") from the command line should kick you off. The steps to get it running are:
  
  1. Download the blackjack.rb file to your computer.
  2. Launch terminal.
  3. Make sure you have Ruby installed (you can check this with <code>$ ruby -v</code>).
  4. Navigate to the folder containing blackjack.rb via your terminal.
  5. Launch the file by typing $ruby blackjack.rb


<h2> How to Play </h2>

You only have two options: 'hit' or 'stick'. Follow the onscreen instructions - the game will end when you either choose to stick at your current score, or when you go bust (i.e. if you have over 21 points).

Rules are the same as normal Blackjack except that aces have a fixed value of 11, rather than being optionally 1 or 11. This was for coding simplicity more than anything else although I may revisit that at some point. It'd just be a bit of extra logic to say broadly "aces are 11 by default but if there are aces in the hand, and random card push to player hand would result in bust, recalculate hand value with ace as 1".

<h2> How the code is structured </h2>

There are five methods:
1. random_card: This picks a value at random from a list of card values.
2. move: This asks the player for a move.  If they enter hit or stick, it returns the move. Otherwise,it keeps asking.
3. score: Translates the string of the card into a value
4. dealer_score_calc: I kept it simple, but basically this is a very rough approximation of likely dealer scores i.e. 2/7 chance of bust and 1/7 chance of any score from 17-21.
5. run_game: the loop which pulls in all the other methods and sets win/loss/break conditions.
