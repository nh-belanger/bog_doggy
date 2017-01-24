class DogsController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    @dogs = @user.dogs
  end

  def new
    @user = User.find(params[:user_id])
    @dog = Dog.new
  end

  def create
    @user = User.find(params[:user_id])
    @dog = Dog.create(dog_params)
    @dog.user = @user

    if @dog.save
      flash[:notice] = "Dog saved successfully"
      redirect_to user_path(@user)
    else
      flash[:alert] = "Dog not saved successfully"
      redirect_to user_path(@user)
    end
  end

  def dog_params
    params.require(:dog).permit(:name)
  end
end
