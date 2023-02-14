class DiceController < ApplicationController
    # every controller has several methods. this method is called an "action"
    # here, the implicit method is:
    # def index
        # reder the file in /views/dice/index.html
        # its looking for a file that matches dice?
    # end
    def index
        @die1 = rand(1..6)
        #adding the @ symbol makes it an instance so it can translate from backend to frontend, need to copy in the frontend
        @die2 = rand(1..6)
        @total = @die1 + @die2
        @username = params["username"]
    end
end
