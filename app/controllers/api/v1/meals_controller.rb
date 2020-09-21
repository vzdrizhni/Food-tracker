class Api::V1::MealsController < ApplicationController
    before_action :authenticate_with_token!, only: [:create]

    def show
        meal = Meal.find params[:id]
        meal_serializer = parse_json meal
        json_response "Meal showed!", true, {meal: meal_serializer}, :ok
    end

    def create
        meal = Meal.new()
        meal.user_id = current_user.id
        if meal.save
            meal_serializer = parse_json meal
            json_response "Meal created!", true, {meal: meal_serializer}, :ok
        else
            json_response "Something is wrong", false, {}, :unauthorized
        end
    end
end