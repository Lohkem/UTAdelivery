class CasinosController < ApplicationController
  #index, show, new, edit, create, update and destroy
  
  def index
    @casinos = Casino.all
  end

  def show
    @casino = Casino.find(params[:id])
  end

  def new
    @casino = Casino.new
  end

  def create
    @casino = Casino.new(casino_params)

    if @casino.save
      redirect_to @casino
    else
      render 'new'
    end
  end

  private
    def casino_params
      params.require(:casino).permit(:nombre, :tipocomida, :rangoprecio, :ubicacion)
    end
end
