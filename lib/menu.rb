class Menu

  def initialize
  @menu = [{:dish => "Pasta", :price => 5},
    {:dish => "Avocado", :price => 2},
    {:dish => "Egg", :price =>4}
    ]
    @blank_order = []
  end

  def view_dishes
    @menu
  end


  def selects_dishes(dish)
    selected = menu.find { |key| key[:dish] == dish }
    @blank_order << selected
  end


attr_reader :menu, :blank_order
end
