class KittensController < ApplicationController
  def index
    @kittens = Kitten.all
    respond_to do |format|
      format.html { render 'index.html.erb' }
      format.json { render json: @kittens }
    end
  end

  def show
    @kitten = Kitten.find(params[:id])
  end

  def new
    @kitten = Kitten.new
  end

  def edit
    @kitten = Kitten.find(params[:id])
  end

  def create
    @kitten = Kitten.new(kitten_params)
    @kitten.save
    flash.notice = "Your kitten #{@kitten.name} has been created successfully!"
    redirect_to kitten_path(@kitten)
  end

  def update
    @kitten = Kitten.find(params[:id])
    @kitten.update(kitten_params)
    flash.notice = "Your kitten #{@kitten.name} has been updated successfully!"
    redirect_to kitten_path(@kitten)
  end

  def destroy
    @kitten = Kitten.find(params[:id])
    @kitten.destroy
    flash.notice = "Your kitten #{@kitten.name} has been destroyed"
    redirect_to kittens_path
  end

  private

  def kitten_params
    params.require(:kitten).permit(:name, :age, :softness, :cuteness)
  end
end
