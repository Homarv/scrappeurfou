require_relative '../lib/test'

# describe "count array " do 
#   expect(             )

describe 'Hash builder' do
    it 'combines two arrays to generate a hash' do
      array_name_cryptocurrencies = ['Bitcoin', 'Ethereum']
      array_value_cryptocurrencies = ['$7,026.38', '$170.75']
      expect(method_to_make_hash_with_2_array(title_builder array_name_cryptocurrencies, array_value_cryptocurrencies)).to eq({"Bitcoin"=>"$7,026.38", 
                                                "Ethereum"=>"$170.75",})

    end
end