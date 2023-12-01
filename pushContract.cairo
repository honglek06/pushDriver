#[contract]
mod GameContract {
  use starknet::storage::SimpleMap;
  use starknet::get_caller_address;

  let players: SimpleMap<ContractAddress, felt> = SimpleMap::new();

  #[event]
  fn JoinGame(player: ContractAddress) {}

  #[external]
  fn joinGame() {
    let player = get_caller_address();
    players.insert(player, 0);
    JoinGame(player);
  }

  #[external]
  fn playGame(move: felt) {
    let player = get_caller_address();
    let balance = players.get(player).unwrap();

    // Implement game logic here, updating player's balance based on move

    players.set(player, balance);
  }

  #[external]
  fn getBalance() -> felt {
    let player = get_caller_address();
    players.get(player).unwrap()
  }
}
