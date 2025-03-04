class VansController < ApplicationController
  def index
    @vans = Van.all
  end
end
