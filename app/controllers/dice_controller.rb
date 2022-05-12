class DiceController < ApplicationController

    def index
        # render file "views/dice/index.html.erb"
        @die1 = rand(1..6)
        @die2 = rand(1..6)
        @total = @die1 + @die2
        @name = params["name"]
    end


end
