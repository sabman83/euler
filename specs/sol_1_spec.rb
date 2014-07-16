require '../sol_1.rb'

describe '#sum_of_multiples_below_n' do
  it 'returns the sum of the multiples of two numbers for n' do
    sum_of_multiples_below_n(10,3,5).should eq(23)
    sum_of_multiples_below_n(1000,3,5).should eq(233168)
  end  
end

describe '#sum_of_multiples' do
  it 'returns the sum of multiples of two numbers for n' do
    sum_of_multiples(10,3,5).should eq(23)
    sum_of_multiples(1000,3,5).should eq(233168)
  end
end
