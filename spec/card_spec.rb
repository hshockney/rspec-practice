class Card
    attr_accessor :suite, :rank
    def initialize(rank, suite)
    @suite = suite
    @rank = rank
    end
end


RSpec.describe Card do
    let(:card) { Card.new('Ace', 'Spades') }

    it 'has a suite' do
        expect(card.suite).to eq('Spades')
    end
    it 'has a custom error message' do
        comparison = 'Spades'
        expect(card.suite).to eq(comparison),"I expected #{comparison} but i got #{card.suite} instead!"
    end
    it 'has a rank and the rank can change' do
        expect(card.rank).to eq('Ace')
        card.rank = 'Queen'
        expect(card.rank).to eq('Queen')
    end
    it 'has a rank' do
        expect(card.rank).to eq('Ace')
    end
end
