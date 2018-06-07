class Bottles
  def song
    verses(99, 0)
  end

  def verses(first_number_of_bottles, second_number_of_bottles)
    first_number_of_bottles
      .downto(second_number_of_bottles)
      .map { |i| verse(i) }
      .join("\n")
  end

  def verse(number_of_bottles)
    num_left     = number_of_bottles - 1
    post_bottles = bottle_str(num_left)
    pre_bottles  = bottle_str(number_of_bottles)
    if number_of_bottles == 1
      "#{number_of_bottles} #{pre_bottles} of beer on the wall, #{number_of_bottles} #{pre_bottles} of beer.\n" +
        "Take it down and pass it around, no more bottles of beer on the wall.\n"
    elsif number_of_bottles == 0
      "No more #{pre_bottles} of beer on the wall, no more #{pre_bottles} of beer.\n" +
        "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
    else
      "#{number_of_bottles} #{pre_bottles} of beer on the wall, #{number_of_bottles} #{pre_bottles} of beer.\n" +
        "Take one down and pass it around, #{num_left} #{post_bottles} of beer on the wall.\n"
    end
  end

  private

  def bottle_str(number_of_bottles)
    number_of_bottles == 1 ? 'bottle' : 'bottles'
  end
end
