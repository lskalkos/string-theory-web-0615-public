require 'pry'


def sort_by_appearance(characters_to_sort, long_text)
  # code goes here

  characters_array = characters_to_sort.split("")
  letters_array = long_text.split("")

  result = characters_array.each_with_object(Hash.new(0)) do |character, hash|
    hash[character] = 0
    letters_array.each{ |letter| hash[character] += 1 if character == letter }
  end

  h = result.sort_by{ |k, v| v}.reverse.flatten
  Hash[*h].keys.join

end