require 'text_confirmation'

describe 'Confirmation' do
  it 'sends text confirmation of order' do
    text = Text.new
    expect(subject).to respond_to(text_sent)
  end
end
