puts (1..999).inject(0) {|sum, i| (i % 3 == 0 || i % 5 == 0) ? sum + i : sum }
