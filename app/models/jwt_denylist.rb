class JwtDenylist < ApplicationRecord
    # app/models/jwt_denylist.rb

    include Devise::JWT::RevocationStrategies::Denylist
  
    self.table_name = 'jwt_denylist'
  
  
end
