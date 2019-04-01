require 'menu'

class Order

  def initialize
    @total = 0
  end

  def checks_total(order)
    @menu.each {|item|@total += item * item}
    fail "Total does not match orders made" if @total != order
  end



def fake_text(customer)
  customer.text_sent
end

  attr_reader :total
end
