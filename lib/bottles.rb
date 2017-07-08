class Bottles

  def verse(number)
    case
      when number > 1
        many_bottles_left(number)
      when number == 1
        one_bottle_left
      else number == 0
        no_bottle_left
      end
  end

  def verses(from, to)
    vs = []
    for verse_number in from.downto(to)
      vs << verse(verse_number).to_s
    end
    vs.join("\n")
  end

  def song
    vs = []
    99.downto(0).each do |verse_number|
      vs << verse(verse_number)
    end
    vs.join("\n")
  end

  private

  def one_bottle_left
"1 bottle of beer on the wall, 1 bottle of beer.
Take it down and pass it around, no more bottles of beer on the wall.
"
  end

  def no_bottle_left
"No more bottles of beer on the wall, no more bottles of beer.
Go to the store and buy some more, 99 bottles of beer on the wall.
"
  end

  def many_bottles_left(number)
"#{number} bottles of beer on the wall, #{number} bottles of beer.
Take one down and pass it around, #{number-1} bottle#{number-1 == 1 ? '': 's'} of beer on the wall.
"
  end
end