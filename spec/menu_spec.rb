require 'menu'

describe Menu do
  it 'shows a list of dishes with prices' do
    expect(subject.view_dishes).to eq subject.menu
  end

  it 'creates a blank order' do
    expect(subject.blank_order).to eq []
  end

describe '#selects_dishes' do
  it 'selects dishes from menu and adds to empty order' do
    subject.selects_dishes(dish)
    expect(subject.blank_order).to eq [dish]
  end
end
end
