class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
    @vans = Van.all.first(3)
  end
end
