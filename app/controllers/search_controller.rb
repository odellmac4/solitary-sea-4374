class SearchController < ApplicationController
  def index
    @facade = AirbenderFacade.new(nation_selection)
  end

  private

  def nation_selection
    params[:nation]
  end
end