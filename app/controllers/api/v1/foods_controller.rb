class Api::V1::FoodsController < ApplicationController
    def create
        food = Food.new(food_params)
        food.meal_id = params[:meal_id]
        if food.save
            json_response "Food created!", true, {food: food}, :ok
        else
            json_response "Something is wrong", false, {}, :unauthorized
        end
    end

    private

    def food_params
        params.require(:food).permit(:title, :calories, :grams)
    end
end