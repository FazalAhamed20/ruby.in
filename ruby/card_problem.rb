
module Blackjack
  CARDS={
    ace:"11",two:"2",three:"3",four:"4",five:"5",six:"6",seven:"7",eigth:"8",nine:"9",ten:"10",jack:"10",queen:"10",king:"10",other:"0"
  }
  def self.parse_card(card)
   CARDS[card.to_sym]
  end

  def self.card_range(card1, card2)
   
  end

  def self.first_turn(card1, card2, dealer_card)
    
  end
end
p Blackjack.parse_card("ace")