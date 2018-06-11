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

  def verse(num_bottles)
    if num_bottles == 0
      "No more bottles of beer on the wall, no more bottles of beer.\n" +
        "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
    elsif num_bottles == 1
      "#{num_bottles} bottle of beer on the wall, #{num_bottles} bottle of beer.\n" +
        "Take it down and pass it around, no more bottles of beer on the wall.\n"
    else
      plural = 's' unless num_bottles == 2
      "#{num_bottles} bottles of beer on the wall, #{num_bottles} bottles of beer.\n" +
        "Take one down and pass it around, #{num_bottles - 1} bottle#{plural} of beer on the wall.\n"
    end
  end
end
