class HomeController < ApplicationController
  def index
    if params.has_key?(:liked) && params[:liked] == "true"
      redirect_to new_submission_path
    end
  end

end
