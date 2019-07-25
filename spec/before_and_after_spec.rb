RSpec.describe 'before and after hooks' do
    before(:context) do
        puts "runs once before describe block"
    end

    after(:context) do
        puts "runs once after describe block"
    end

    before(:example) do
        puts "before each example(it)"
    end

    after(:example) do
        puts "after each example(it)"
    end

    it 'is just a random example' do 
        expect(5*4).to eq(20)
    end
    it 'is just another random example' do 
        expect(3-2).to eq(1)
    end
end