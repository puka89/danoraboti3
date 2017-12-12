require_relative '../lib/RSA.rb'

RSpec.describe RSA do
 
 msg = "danoraboti3"
 key_gen = rsa.new_key
 rsa = RSA.new(new_keys[0], new_keys[1], new_keys[2])

  it "checks if it works" do
   expect(rsa.decrypt(rsa.encrypt(msg))).to eq(msg)
  end

end
