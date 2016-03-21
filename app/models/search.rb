class Search < ActiveRecord::Base
  def self.search(search)
      Course.where("name LIKE ?", params[:search])
  end
end
