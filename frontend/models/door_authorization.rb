class DoorAuthorization
  include DataMapper::Resource

  property :id,           Serial
  property :name,         String
  property :card_type,    String
  property :card_number,  String, key: true, unique: true
  property :expires_at,   DateTime
  property :created_at,   DateTime
  property :updated_at,   DateTime
  property :active,       Boolean, default: true
end