class HotChocolate
    def drink
        'Delicious'
    end
    def discard
        'Plop!'
    end
    def purchase(number)
        "Awesome, I just purchased #{number} more hot chocolate beverages"
    end
end
class Coffee
    def drink; end
    def discard; end
    def purchase(number); end
end
RSpec.describe HotChocolate do
    it 'confirms an object can respond to method' do
        expect(subject).to respond_to(:drink)
        expect(subject).to respond_to(:drink, :discard)
        expect(subject).to respond_to(:drink, :discard, :purchase)
    end
    it 'confirms an object can respond to method with arguments' do
        expect(subject).to respond_to(:purchase).with(1).arguments
    end
    it { is_expected.to respond_to(:purchase, :discard) }
    it { is_expected.to respond_to(:purchase).with(1).arguments }
end
