require('minitest/autorun')
require('minitest/rg')
require_relative('./card.rb')
require_relative('./testing_tast_3.rb')

class TestCard < Minitest::Test

def setup
  @card1 = Card.new("hearts", 1)
  @card2 = Card.new("clubs", 9)
  @cardgame = CardGame.new
end

def test_check_for_ace
  card1 = @card1
  result = @cardgame.check_for_ace(card1)
  assert_equal(true, result)
end


def test_highest_card
  card1 = @card1
  card2 = @card2
  result = @cardgame.highest_card(card1, card2)
  assert_equal(card2, result)
end

def test_cards_total
  cards = [@card1, @card2]
  result = CardGame.cards_total(cards)
  assert_equal(10, result)
end

end
