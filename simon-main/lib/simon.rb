class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize()
    @sequence_length = 1
    @game_over = false
    @seq = []
  end

  def play
    until @game_over 
    take_turn
    end
    self.game_over_message
    self.reset_game
    
  end

  def take_turn
    if @game_over == false
    self.show_sequence
    self.require_sequence
    self.round_success_message
    @sequence_length += 1
    end
  end

  def show_sequence
    self.add_random_color
  end

  def require_sequence
  end

  def add_random_color
   @seq << COLORS.shuffle[0]
  end

  def round_success_message
    "round is good, continue"
  end

  def game_over_message
    "game over "
  end

  def reset_game
    @game_over = false
    @sequence_length = 1
    @seq = []
  end
end