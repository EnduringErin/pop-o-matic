class CompetenciesController < ApplicationController
  def index
    @competencies = Competency.all
  end

  def show
    @competency = Competency.find(params[:id])
  end

  def new
    @competency = Competency.new
  end

  def edit
    @competency = Competency.find(params[:id])
  end

  def create
    @competency = Competency.new(competency_params)

    if @competency.save
      redirect_to @competency
    else
      render 'new'
    end
  end



  private
    def competency_params
      params.require(:competency).permit(:name, :european_credits, :level)
    end
end
