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

  def edit
    @casino = Casino.find(params[:id])
  end

  def create
    @casino = Casino.new(casino_params)

    if @casino.save
      redirect_to @casino
    else
      render 'new'
    end
  end

  def update
  @casino = Casino.find(params[:id])
 
  if @casino.update(casino_params)
    redirect_to @casino
  else
    render 'edit'
  end
end

def destroy
  @casino = Casino.find(params[:id])
  @casino.destroy
 
  redirect_to casinos_path
end

  private
    def casino_params
      params.require(:casino).permit(:nombre, :tipocomida, :rangoprecio, :ubicacion)
    end
end
