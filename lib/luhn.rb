module Luhn
  def self.is_valid?(number)
    sum = 0
    nums = number.to_s.split('')
    nums.each_with_index do |n, i|
      sum += if (i % 2 == 0)
              n.to_i * 2 >9 ? n.to_i*2-9 : n.to_i*2
            else
              n.to_i
            end
    end
    if (sum % 10) == 0
      return true
    else
      return false
    end
  end
end
