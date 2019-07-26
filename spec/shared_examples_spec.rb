RSpec.shared_examples 'a Ruby object that has length method that returns three' do
    it 'returns number of items' do
        expect(subject.length).to eq(3)
    end 
end

RSpec.describe Array do
    subject { [1,2,3] } 
    include_examples 'a Ruby object that has length method that returns three'
end
RSpec.describe String do
    subject { 'abc'} 
    include_examples 'a Ruby object that has length method that returns three'
end
RSpec.describe Hash do
    subject {{ a: 1, b: 2, c:3 }} 
    include_examples 'a Ruby object that has length method that returns three'
end
class SausageLink
    def length
        3
    end
end
RSpec.describe SausageLink do
    subject { described_class.new } 
    include_examples 'a Ruby object that has length method that returns three'
end