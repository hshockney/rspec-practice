RSpec.describe 'not to method' do
    it 'checks that two values do not match' do
        expects(5).not_to eq(10)
        expects('Hello').not_to eq('hello')
        expects([5,2,3]).not_to eq([2,2,2])
    end
end