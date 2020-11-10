class Example < ApplicationRecord
    belongs_to :word


    def clear_chars
        self.content.tr!('[]', '')
        self.content.tr!('\'', '')
   
    end
end
