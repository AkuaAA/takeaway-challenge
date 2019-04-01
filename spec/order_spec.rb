require 'order'

describe Order do

  it 'compares the total of order with dishes ordered' do
    subject.checks_total(:order)
    expect (subject.checks_total(order)).to eq 10
  end
  it 'raises error if total and dishes ordered are not equal' do
    subject.checks_total
    expect{subject.checks_total 1}.to_raise_error "Total does not match orders made"
end

  it 'sends fake text' do
   expect(subject.fake_text).to eq text_sent
  end
end
