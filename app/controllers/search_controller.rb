class SearchController < ApplicationController
  def results
    @query = params[:q]
    @games_count = Game.where('name LIKE ?', "%#{@query}%")
    @games = @games_count.includes(:ratings).order(:name).paginate(:page => params[:page], :per_page => 30)
  end
end
