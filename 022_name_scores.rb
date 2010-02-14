require 'pp'
class String
  def alphabetical_score
    self.downcase.bytes.to_a.inject(0) {|sum, value| sum += (value - 96)}
  end
end

f = File.open('names.txt')
l = f.readline
names = l.split(/,/)
names.map! {|name| name.delete "\""}
names.sort!

total_score = 0
names.each_with_index do |name, index|
  total_score += (name.alphabetical_score * (index + 1))
end
puts total_score
