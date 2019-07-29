RSpec.describe "include matcher" do
    describe 'got chocolate' do
        it 'checks for substring inclusion' do
            expect(subject).to include('hot')
            expect(subject).to include('choc')
            expect(subject).to include('late')
        end
        it { is_expected.to include('hot')}
    end
    describe [10,20,30,40,50] do
        it 'checks for inclusion in the array, regardless of order' do
            expect(subject).to include(10)
            expect(subject).to include(20)
            expect(subject).to include(30)
            expect(subject).to include(50)
        end
        it {is_expected.to include(20, 30, 50)}
    end
    describe ({a: 2, b: 4, c: 6}) do
        it 'can check for key existance' do
            expect(subject).to include(:a)
            expect(subject).to include(:a, :b)
            expect(subject).to include(:b, :a)
        end
        it 'can check for a key value pair' do
            expect(subject).to include(a: 2)
        end
        it { is_expected.to include(c: 6) }
    end
end
