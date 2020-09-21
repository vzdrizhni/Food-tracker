class Api::V1::FoodsController < ApplicationController
    def show
        food = Food.find params[:id]
        food_serializer = parse_json food
        json_response "Meal showed!", true, {meal: food_serializer}, :ok
    end

    def create
        food = Food.new(food_params)
        food.meal_id = params[:meal_id]
        if food.save
            food_serializer = parse_json food
            json_response "Food created!", true, {food: food_serializer}, :ok
        else
            json_response "Something is wrong", false, {}, :unauthorized
        end
    end

    private

    def food_params
        params.require(:food).permit(:title, :calories, :grams)
    end
end