class Api::DogsController < ApplicationController
  def create
    dog = Dog.new(
      name: params[:name],
      age: params[:age],
      breed: params[:breed],
      user_id: current_user.id
    )
    if current_user
      dog.save
      render json: {message: "Dog saved succesfully"}
    else
      render json: {alert: "Users must be logged in to add new dog"}
    end
  end
end
