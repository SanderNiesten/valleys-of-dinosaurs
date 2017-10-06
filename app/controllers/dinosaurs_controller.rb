class DinosaursController < ApplicationController
  ApplicationController
    def index
      @dinosaurs = Dinosaur.all
    end
end
