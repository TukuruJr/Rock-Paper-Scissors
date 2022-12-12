import 'dart:io';
import 'dart:math';

class Game {
  String getComputerMove() {
    String move = '';
    var ran = Random();
    int index = ran.nextInt(3); //random int from 0 to 2

    switch (index) {
      case 0:
        move = 'Rock';
        break;
      case 1:
        move = 'Paper';
        break;
      case 2:
        move = 'Scissors';
        break;

      default:
        move = 'input error';
    }

    return move;
  }

// a method to get user move and return the move.

  String getUserMove() {
    String move = '';
    print('SELECT A PLAYER MODE: ');
//display the menu of available
    stdout.writeln('choose desired character : ');
    stdout.writeln('r. Rock');
    stdout.writeln('p. Paper ');
    stdout.writeln('s. Scissors ');
    var character = stdin.readLineSync()!.toUpperCase();
    switch (character) {
      case 'R':
        move = 'Rock';
        break;
      case 'P':
        move = 'Paper';
        break;
      case 'S':
        move = 'Scissors';
        break;

      default:
        move = 'input error';
    }

    return move;
  }

  //a method to display winner
  String whoWon(String playerMove, String computerMove) {
    String result = '';
    if (playerMove == computerMove) {
      //if the same, it's a tie
      result = 'Tie';
    } else if (playerMove == 'Rock' && computerMove == 'Scissors') {
      result = 'You Win!';
    } else if (playerMove == "Scissors" && computerMove == 'Paper') {
      result = 'You Win!';
    } else if (playerMove == 'Paper' && computerMove == 'Rock') {
      result = 'You Win!';
    } else if (playerMove == 'input error') {
      result = 'Invalid key! try again with either a "r","p" or "s"!';
    } else {
      // if it's not a tie and you didn't win, computer won
      result = 'Computer Wins!';
    }
    return result;
  }
}
