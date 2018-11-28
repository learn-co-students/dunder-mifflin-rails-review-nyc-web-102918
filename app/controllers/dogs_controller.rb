class DogsController < ApplicationController

  before_action :find_dog, only:[:show, :edit, :update, :destroy]

 def index
   @dogs = Dog.all
   render :index
 end


 def show
   render :show
 end

 def new
   @dog = Dog.new
   #@parties = Party.all
 end

 def create

   @dog = Dog.create(dog_params)
   redirect_to dogs_path
 end

 def edit

 end

 def update
   @dog.update(dog_params)
   redirect_to dog_path(@dog)
 end


 def destroy
   @dog.delete
   redirect_to dogs_path
 end


private

 def find_dog
   @dog = Dog.find(params[:id])
 end
 #💪
 def dog_params
   params.require(:dog).permit(:name, :breed, :age)
 end


end
