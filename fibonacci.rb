def fibs(length)
  if length == 1
    return [0]
  elsif length == 2
    return fibs(1) << 1
  else
    till_now = fibs(length-1)
    return till_now << (till_now[-1] + till_now[-2])
  end
end

puts "Put the length!"
p fibs(gets.chomp.to_i)
