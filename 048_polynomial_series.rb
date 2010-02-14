require 'pp'

# initial idea was that there might be pattern to the series
# probably is but I didn't spot it immediately
#pp (1..10).map {|series_length| (1..series_length).inject {|sum, n| sum += n**n}}

# so we just calculate it which doens't take as long as I'd expected
pp (1..1000).inject {|sum, n| sum += n**n}.to_s.split(//)[-10..-1].to_s
