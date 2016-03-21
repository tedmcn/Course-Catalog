class SearchController < ApplicationController
  def search
    @courses = Course.search(params[:search])
  end
end
