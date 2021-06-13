class ProfileController < ApplicationController
  def show
    @dog = Dog.find_by(user_id: current_user.id)

    @user = current_user

    if (@dog.present?)

      puts "showing dog down"
      puts @dog
      puts @dog.name
      puts @dog.photo.key
      puts @dog.photo
      puts "showing dog up"

    end
  
  end
end
