def collatz_sequence_length(n)
  terms = [ n ]
  while n > 1
    n = n % 2 == 0 ? n / 2 : 3*n + 1
    terms << n
  end
  terms.size
end

number_with_longest_sequence = 0;
biggest_num_terms = 0;
collatz = 999_999.downto(700_000).each do |n|
  num_terms = collatz_sequence_length(n)
  if num_terms > biggest_num_terms
    biggest_num_terms = num_terms 
    number_with_longest_sequence = n
  end
end

puts number_with_longest_sequence
