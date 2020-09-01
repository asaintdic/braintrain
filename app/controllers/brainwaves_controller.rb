class BrainwavesController < ApplicationController

   def index
     @brainwaves = Brainwave.all
   end

   def show
    @brainwave = Brainwave.find(params[:id])
   end
end
