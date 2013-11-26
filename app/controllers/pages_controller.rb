class PagesController < ApplicationController
  def index
    @tournaments = Tournament.all
  	render :controller => "tournaments", :action => "index"
  end
end
