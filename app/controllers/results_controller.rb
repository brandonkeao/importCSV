class ResultsController < ApplicationController
  def index
  	@results = Result.all
  end

  def accept_csv
  	Result.load_csv(params[:file])
  	redirect_to root_url, notice: "Results Data Imported!"
  end
end
