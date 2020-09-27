class KittensController < ApplicationController
  def index
    @kittens = Kitten.all
  end

  def show
    @kitten = Kitten.find(param[:id])
  end

  def new
    @kitten = Kitten.new
  end

  def edit
    @kitten = Kitten.new(kitten_params)
  end

  private

  def kitten_params
    params.require(:kitten).permit(:name, :age, :softness, :cuteness)
  end
end
