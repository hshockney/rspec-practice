#Predicate method in Ruby returns boolean, ends in ?
# puts 0.zero? true
# puts 15.zero? false
# puts 2.even? true
# puts 3.even? false
# puts 11.odd? true
# puts 16.odd? false
# puts [].empty? true
RSpec.describe 'predicate methods and predicate methods' do
    it 'can be tested with Ruby methods' do
        result = 16 / 2
        expect(result.even?).to eq(true)
    end
    it 'can be tested with predicate matchers' do
        #be_even
        #be_odd
        #be_empty
        #be_zero
        expect(16 / 2).to be_even
        expect(15).to be_odd
        expect([]).to be_empty
        expect(0).to be_zero

    end
    describe 0 do
        it { is_expected.to be_zero }
    end
end