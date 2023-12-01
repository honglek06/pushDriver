Markdown
# Simple Game Contract

This project implements a simple game contract using Cairo language. The contract allows players to join the game and play by making moves. Players' balances are updated based on their moves.

## Functionality

* Players can join the game by calling the `joinGame()` function.
* Players can play the game by calling the `playGame()` function, which takes a move as input.
* Players can check their balance by calling the `getBalance()` function.

## Usage

To run the game, you will need to have the Cairo compiler installed. You can then compile the contract by running the following command:

cairo-compile game_contract.cairo

This will create a file called game_contract.cairo in the output directory. You can then deploy the contract to the Starknet blockchain using the following command:

cairo-deploy game_contract.cairo


Once the contract is deployed, you can interact with it using the following commands:

Player 1 joins the game
cairo-call game_contract.cairo joinGame("player1")

Player 2 joins the game
cairo-call game_contract.cairo joinGame("player2")

Player 1 plays a move
cairo-call game_contract.cairo playGame("player1", "move1")

Player 2 plays a move
cairo-call game_contract.cairo playGame("player2", "move2")

Get the balance of player 1
cairo-call game_contract.cairo getBalance("player1")

Get the balance of player 2
cairo-call game_contract.cairo getBalance("player2")


This will output the following:

Player player1 has joined the game.
Player player2 has joined the game.
Player player1 played move move1.
Player player2 played move move2.
Player player1 has a balance of 0.
Player player2 has a balance of 0.


## License

This project is licensed under the MIT License.
