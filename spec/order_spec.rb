require 'order'

describe Order do
  it 'checks & compares the total of order with dishes ordered' do
    subject.checks_total
    expect (subject.checks_total(order)).to eq 10
  end

  it 'sends fake text' do
  
  end
end
