RSpec.describe 'nested hooks' do
    before(:context) do
        puts "Outer Before context"
    end
    before(:example) do
        puts "Outer Before example"
    end
    it 'does basic math' do
        expect(1 + 1).to eq(2)
    end
    context 'with condition a' do
        before(:context) do
            puts "Inner Before context"
        end
        before(:example) do
            puts "Inner Before example"
        end
        it 'does more basic math' do
            expect(2 + 2).to eq(4)
        end
        it 'does subtraction' do
            expect(1 - 1).to eq(0)
        end
    end   
end