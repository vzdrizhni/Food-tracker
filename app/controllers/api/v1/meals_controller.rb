class Api::V1::MealsController < ApplicationController
    before_action :authenticate_with_token!, only: [:create]

    def create
        meal = Meal.new()
        meal.user_id = current_user.id
        if meal.save
            json_response "Meal created!", true, {meal: meal}, :ok
        else
            json_response "Something is wrong", false, {}, :unauthorized
        end
    end
end