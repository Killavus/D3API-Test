class Account
  include Virtus.model

  attribute :name, String
  attribute :battle_tag, Integer
  
  attribute :heroes, [Hero]
end
