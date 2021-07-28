class ActionsController < ApplicationController

    def index
        actions = Action.all 
        render json: ActionSerializer.new(action)
    end

    def show
        action = Action.find(params[:id])
        render json: ActionSerializer.new(action)
    end

    def create
        action = Action.new(action_params)
        if action.save
            render json: ActionSerializer.new(action)
        else
            render json: {error: "oh no!"}
        end
    end

    def destory
        action = Action.find(params[:id])
        action.destory
        render json: {message: "deleted #{action.name}"}
    end

    def update
        action = Action.find(params[:id])
        if action.update(action_params)
            render json: ActionSerializer.new(action)
        else
            render json: {error: "error saving"}
        end
    end

    private
    def actions_params
        params.require(:action).permit(:name, :description, :category_id)
    end
end