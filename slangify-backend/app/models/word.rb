class Word < ApplicationRecord
    has_many :definitions
    has_many :examples
end
