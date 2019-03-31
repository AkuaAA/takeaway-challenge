require 'menu'

describe Menu do
  let(:dish) { double :dish ["Avocado",1] }

  it 'shows a list of dishes with prices' do
    expect(subject.view_dishes).to eq subject.menu
  end

  it 'creates a blank order' do
    expect(subject.blank_order).to eq []
  end

describe '#selects_dishes' do
  it 'selects dishes from menu and adds to empty order' do
    subject.selects_dishes("Avocado")
    expect(subject.selects_dishes(:dish)).to eq subject.blank_order
  end
end
end
