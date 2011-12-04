class Fixnum
  def digits
    to_s.split('').map(&:to_i)
  end
end
