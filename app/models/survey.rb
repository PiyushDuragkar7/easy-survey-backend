class Survey
  include Mongoid::Document
  include Mongoid::Timestamps


  field :name, type: String
  field :description, type: String
  field :components, type: Array, default: []

  validates_presence_of :name
end
