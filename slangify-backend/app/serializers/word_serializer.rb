class WordSerializer < ActiveModel::Serializer
  attributes :id, :term, :definitions, :examples
end
