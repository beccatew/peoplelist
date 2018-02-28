class PeepListController < ApplicationController
  def index
    @peeps = Peep.all
  end

  def show
    @peep = Peep.find(params[:id])
  end

  def new
    @peep = Peep.new
  end

  def edit
    @peep = Peep.find(params[:id])
  end

  def create
    @peep = Peep.new(peep_params)

    if @peep.save
      redirect_to peep_path(@peep)
    else
      render :new
    end
  end

    def destroy
      Peep.find(params[:id]).destroy
      redirect_to peep_path
    end

    private
    def peep_params
      params.require(:peep).permit(:name, :age, :hair_color, :eye_color, :gender, :alive)
    end
end
