#[contract]
mod TicTacToeGameContract {
  use starknet::storage::SimpleMap;
  use starknet::get_caller_address;

  let board: SimpleMap<felt, felt> = SimpleMap::new();
  let player_turn: felt = 0;  // 0 for player 1, 1 for player 2

  #[event]
  fn MakeMove(player: ContractAddress, row: felt, col: felt, mark: felt) {}

  #[external]
  fn initialize() {
    // Initialize the board and player turn
  }

  #[external]
  fn makeMove(row: felt, col: felt) {
    let player = get_caller_address();
    let current_player = player_turn % 2;

    // Check if the move is valid
    // Implement game logic here, such as checking if the position is empty and if it's the current player's turn

    MakeMove(player, row, col, current_player);

    // Check if the game is over
    // Implement game logic here,
