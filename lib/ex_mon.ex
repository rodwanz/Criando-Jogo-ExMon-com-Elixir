defmodule ExMon do
  alias ExMon.Game.{Actions, Status}
  alias ExMon.{Game, Player}

  @computer_name "Sem Limite"

  def create_player(move_avg, move_heal, move_rnd, name) do
    Player.build(move_avg, move_heal, move_rnd, name)
  end

  def start_game(player) do
    @computer_name
    |> create_player(:punch, :kick, :heal)
    |> Game.start(player)

    Status.print_round_message()
  end

  def make_move(move) do
    Actions.fetch_move(move)
  end
end
