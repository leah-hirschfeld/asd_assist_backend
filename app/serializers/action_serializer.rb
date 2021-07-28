class ActionSerializer
  include FastJsonapi::ObjectSerializer
  
    belongs_to :category
    attributes :name, :description, :category_id, :capitalized_name

  end