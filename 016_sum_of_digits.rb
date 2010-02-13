(2**1000).to_s.split(//).inject(0) {|sum, d| sum += d.to_i}
