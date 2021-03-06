class ShaCredential
  include Mongoid::Document
  include Mongoid::Encryptor

  field :email
  field :password
  field :options

  validates_presence_of :email, :password

  encrypts :password, :mode => :sha
end
