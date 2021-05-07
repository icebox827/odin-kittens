class KittensController < ApplicationController
  def index
    @kittens = Kitten.all
  end

  def show
    @kitten = Kitten.find(params[:id])
  end

  def new
    @kitten = Kitten.new
  end

  def create
    @kitten = Kitten.new(kittens_params)
    if @kitten.save
      flash[:notice] = 'Kitten created successfully'
      redirect_to root_path(@kitten)
    else
      flash[:alert] = 'Kitten not created, please try again'
      render 'new'
    end
  end

  def update
    @kitten = Kitten.find(params[:id])
    if @kitten.update(name: params[:kitten][:name], age: params[:kitten][:age])
      flash[:notice] = 'Kitten updated successfully'
      redirect_to kitten_path(@kitten)
    else
      render 'edit'
    end
  end

  def edit
    @kitten = Kitten.find(params[:id])
    flash[:notice] = 'Kitten edited successfully'
  end

  def destroy
    @kitten = Kitten.find(params[:id])
    @kitten.destroy
    flash[:alert] = 'Your kitten has been deleted'
    redirect_to root_path
  end

  private

  def kitten_params
    params.require(:kitten).permit(:name, :age, :cuteness, :softness)
    redirect_to kitten_path(@kitten)
  end
end
