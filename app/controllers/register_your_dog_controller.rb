class RegisterYourDogController < ApplicationController
  
  def new
    @dog = Dog.new
  end

  def create
    # @dog = Dog.new(params[:user])
    # if @dog.save
    #   redirect_to @dog, alert: "Dog profile created successfully."
    # else
    #   redirect_to new_user_session_path, alert: "Error creating profile."
    # end
  end
end
