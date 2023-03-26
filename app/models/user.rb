class User < ApplicationRecord
    has_secure_password

    has_many :classifieds

    validates_presence_of :fullname, :username, :password_digest
    validates_uniqueness_of :username
    
    devise :database_authenticatable, :registerable,
       :recoverable, :rememberable, :validatable,
       :jwt_authenticatable, jwt_revocation_strategy: JwtDenylist

end
