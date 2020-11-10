class Api::V1::DefinitionsController < ApplicationController
    def show
        definition = Definition.find(params[:id])
        render json: definition
    end
    
    def index
        definitions = Definition.all
        render json: definitions
    end

    def create
        definition = Definition.create!(definition_params)
        render json: definition
    end

    def update
        definition = Definition.find(params[:id])
        definition.update(definition_params)
        render json: definition
    end

    def destroy
        definition = Definition.find(params[:id])
        definition.destroy
        render json: definition
    end

    private

    def definition_params
        params.require(:definition).permit(:word_id, :content, :likes)
    end
end
