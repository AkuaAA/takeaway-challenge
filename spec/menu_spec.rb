require 'menu'

describe Menu do
  describe '#view_dishes'
  it 'shows a list of dishes with prices' do
  expect(subject).to respond_to (:view_dishes)
end
end
