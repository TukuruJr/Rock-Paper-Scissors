import 'dart:io';

import '../lib/RPS.dart';

void main(List<String> arguments) {
  print('ROCK, PAPER SCISSORS SHOOT!!!');
  final game = Game();
  String compMove = game.getComputerMove();
  String userMove = game.getUserMove();

  print('You played $userMove and computer played $compMove');
  print(game.whoWon(userMove, compMove));
}
