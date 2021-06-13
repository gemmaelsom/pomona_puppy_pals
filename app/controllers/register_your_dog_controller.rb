class RegisterYourDogController < ApplicationController
  
  def new
    @dog = Dog.new
  end

  def show
    render :create
  end

  def create
    
    name = params[:name]
    breed = params[:breed]
    age = params[:age]
    
    dog = Dog.create!(name: name, breed: breed, age: age, user_id: current_user.id)

  end
end
