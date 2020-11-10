class Definition < ApplicationRecord
    belongs_to :word, dependent: :destroy
 
    def clear_chars
        self.content.tr!('[]', '')
        self.content.tr!('\'', '')
   
        ##puts self.content
        self.example.tr!('[]', '')
        self.example.tr!('\'', '')
    end
end
