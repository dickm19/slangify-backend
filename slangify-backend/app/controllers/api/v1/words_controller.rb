class Api::V1::WordsController < ApplicationController
 
# testing to see if this is the updated version

    def show
        word = Word.find!(params[:id])
        render json: word
    end
    
    def index
        words = Word.all
        render json: words
    end

    def create
        word = word.create!(word_params)
        render json: word
    end

    def update
        word = Word.find!(params[:id])
        word.update!(word_params)
        render json: word
    end

   

    private

    def word_params
        params.require(:word).permit(:term)
    end
end
