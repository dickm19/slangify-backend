class Definition < ApplicationRecord
    belongs_to :word, dependent: :destroy
 
    def clear_chars
        self.content.tr!('[]', '')
        self.content.tr!('\'', '')
    end 
    
end
