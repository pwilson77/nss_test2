class DatamodelsController < ApplicationController

    def index
        @datamodel = Datamodel.all
    end

    def new 
        @datamodel = Datamodel.new
    end

    def create
        
    end
    
end
