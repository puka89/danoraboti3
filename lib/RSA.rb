require "prime.rb"  


class RSA
    def initialize n, e, d
       @n = n
       @e = e
       @d = d
    end
    def n
       @n
    end

    def e
       @e
    end 

    def d
       @d
    end

def new_key

	until Prime.prime?(p) do
            p = rand(10000)
        end

	until Prime.prime?(q) do
            q = rand(100...10000)
        end

	n = p * q

	lmb = (p - 1).lcm(q - 1)

	until Prime.prime?(e) do
	    e = rand(1...lmb)
        end

	d = 0

	while ((d * e)%lmb != 1)
	    d++
	end

	magic = Array.new

	magic[0] = n
	magic[1] = e
	magic[2] = d

	return magic

end

def encrypt message
	return (message.chars.map {|c| c.ord ** @e % @n}).join("_")
end

def decrypt message
	return (message.split("_").map {|c| (c.to_i ** @d % @n).chr}).join("")
end 

end
