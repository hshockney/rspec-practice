RSpec.describe Hash do    
    it 'should start off empty' do
        puts subject
        puts subject.class
        expect(subject.length).to eq(0)
        subject[:some_key] = 'Some Value'
        expect(subject.length).to eq(1)
    end
    it 'is isolated between examples' do
        expect(subject.length).to eq(0)
    end
end

RSpec.describe Array do    
    it 'array should start off empty' do
        expect(subject.length).to eq(0)
        subject.push('Some item')
        expect(subject.length).to eq(1)
    end
end

#helper method returns calls under test