class Hamming
  def self.compute(s1, s2)
    distance = 0
    length = s1.length
    
    if s1.length > s2.length
      raise ArgumentError.new("Error: First strand is too long.")
    end

    if s1.length < s2.length
      raise ArgumentError.new("Error: Second strand is too long.")
    end

    (0..length).each do |i|
      if s1[i] != s2[i] 
        distance += 1
      end  
    end  

    distance
  end
end  

module BookKeeping
  VERSION = 3
end  