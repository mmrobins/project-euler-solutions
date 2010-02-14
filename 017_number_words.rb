class Integer
  def to_word
    ones = {
      '0' => '',
      '1' => 'one',
      '2' => 'two',
      '3' => 'three',
      '4' => 'four',
      '5' => 'five',
      '6' => 'six',
      '7' => 'seven',
      '8' => 'eight',
      '9' => 'nine',
      '10' => 'ten',
      '11' => 'eleven',
      '12' => 'twelve',
      '13' => 'thirteen',
      '14' => 'fourteen',
      '15' => 'fifteen',
      '16' => 'sixteen',
      '17' => 'seventeen',
      '18' => 'eighteen',
      '19' => 'nineteen',
    }

    tens = {
      '0' => '',
      '2' => 'twenty',
      '3' => 'thirty',
      '4' => 'forty',
      '5' => 'fifty',
      '6' => 'sixty',
      '7' => 'seventy',
      '8' => 'eighty',
      '9' => 'ninety',
    }
    digits = self.to_s.split(//).reverse
    # only goes to hundreds right now
    # getting too messy like this.  probably need a new data structure to take it farther
    # have to worry about splitting the number into groups of 3 digits
    # and then decide whether to put the damned and after the group 
    # depending on whether the rest of the digits are 0's
    return nil if digits.size > 3
    return ones[digits.first] if digits.size == 1;
    word = ''
    digits.size.downto(2) do |column|
      word += case column
        when 4 then ' ' + ones[digits[column - 1]] + ' thousand'
        when 3 then ' ' + ones[digits[column - 1]] + ' hundred' + (digits[column - 2] == '0' ? (digits[column - 3] == '0' ? '' : ' and') : ' and')
        when 2 then
          tens_digit = digits[column - 1]; \
          ones_digit = digits[column - 2]; \
          tens_digit.to_i > 1 \
            ? ' ' + tens[tens_digit] + ' ' + ones[ones_digit] \
            : ' ' + ones[(tens_digit == '0' ? '' : tens_digit) + ones_digit]
        else ''
      end
    end
    word.strip
  end
end

# the + 11 at the end is for the word 'one thousand'
puts words = (1..999).map {|n| n.to_word}.map {|num| num.delete(' ').length}.inject {|sum, n| sum += n} + 11
