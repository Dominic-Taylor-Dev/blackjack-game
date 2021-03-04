<h1> Blackjack Game </h1>

<h2> How to Use </h2>
This is a very simple, one-file game - less than 100 lines all in - created in Ruby and intended to be played from the command line/terminal. It already contains the "run_game" instruction (which is a loop method) inside the code, so simply launching the game file ("blackjack.rb") from the command line should kick you off. The steps to get it running are:
  
  1. Download the blackjack.rb file to your computer.
  2. Launch terminal.
  3. Make sure you have Ruby installed (you can check this with <code>$ ruby -v</code>).
  4. Navigate to the folder containing blackjack.rb via your terminal.
  5. Launch the file by typing <code>$ruby blackjack.rb</code>


<h2> How to Play </h2>

You only have two options: 'hit' or 'stick'. Follow the onscreen instructions - the game will end when you either choose to stick at your current score, or when you go bust (i.e. if you have over 21 points).

Rules are the same as normal Blackjack except that aces have a fixed value of 1, rather than being optionally 1 or 11. This was for coding simplicity more than anything else although I may revisit that at some point. It'd just be a bit of extra logic to say broadly "aces are 11 by default but if there are aces in the hand, and random card push to player hand array would result in bust, recalculate hand value with ace as 1". There would be an edge case of muliple aces, which that wouldn't cover, but I suspect I will never implement the feature anyway, as that wasn't the point of this program.

<h2> How the code is structured </h2>

There are five methods:
1. random_card: This picks a value at random from a list of card values.
2. move: This asks the player for a move.  If they enter hit or stick, it returns the move. Otherwise,it keeps asking.
3. score: Translates the string of the card into a numberical value (suit doesn't matter, even though it's stored more generally).
4. dealer_score_calc: I kept it simple, but basically this is a very rough approximation of likely dealer scores i.e. 2/7 chance of bust and 1/7 chance of any score from 17-21.
5. run_game: the loop which pulls in all the other methods and sets win/loss/break conditions.

<h2> Taking this further </h2>

To take this further, I would consider either fancier visuals in the command line, e.g. by drawing out individual cards across multiple lines like so:

+---------+
| 7♠      |
|         |
|    ♠    |
|         |
|      7♠ |
+---------+
7 of spades

I would also consider trying to use the same sort of logic but with some kind of GUI.
