#Falsy values false,nil
#truthy values everything else

RSpec.describe "be matchers" do
  it 'can test for truthiness' do
    expect(true).to be_truthy 
    expect('hello').to be_truthy
    expect(3.14).to be_truthy
    expect(-1).to be_truthy
    expect([1,2,3,4]).to be_truthy
    expect(:symbol).to be_truthy
    expect({}).to be_truthy
  end 
  it 'can test for falsiness' do
    expect(false).to be_falsy
    expect(nil).to be_falsy
  end
  it 'can test explicitly for nil' do
    expect(nil).to be_nil
    my_hash = { a: 5 }
    expect(my_hash[:b]).to be_nil
  end
end
