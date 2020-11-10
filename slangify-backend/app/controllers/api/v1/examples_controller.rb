class Api::V1::WordsController < ApplicationController

    def show
        example = Example.find!(params[:id])
        render json: example
    end
    
    def index
        examples = Example.all
        render json: examples
    end

    def create
        example = example.create!(example_params)
        render json: example
    end

    def update
        example = Example.find!(params[:id])
        example.update!(example_params)
        render json: example
    end


    private

    def example_params
        params.require(:example).permit(:content, :word_id)
    end
end
