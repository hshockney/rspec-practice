RSpec.describe "allow method review" do
    it 'can customize return value for methods on doubles' do
        calculator = double
        allow(calculator).to receive(:add).and_return(15)
        expect(calculator.add).to eq(15)
    end
    it 'can stub one or more methods on an object' do
        array = [1,2,3]
        expect(array.sum).to eq(6)
        allow(array).to receive(:sum).and_return(10)
        array.push(4)
        expect(array).to eq([1,2,3,4])
    end
    it 'can return multiple return values in sequence' do
        mock_array = double
        allow(mock_array).to receive(:pop).and_return(:c, :b, nil)
        expect(mock_array.pop).to eq(:c)
        expect(mock_array.pop).to eq(:b)
        expect(mock_array.pop).to eq(nil)
        expect(mock_array.pop).to be_nil
    end
end
