class UpdateClassifiedsWithoutUser < ActiveRecord::Migration[7.0]
  
  def up
    default_user = User.create!(
      fullname: "Default User",
      username: "default_user_#{Time.now.to_i}", # Ajout d'un horodatage pour un nom d'utilisateur unique
      password: "default_password"
    )
    Classified.where(user_id: nil).update_all(user_id: default_user.id)
  end
  
  
    def down
      # Supprimez le nouvel utilisateur par défaut si vous souhaitez annuler cette migration.
      User.find_by(username: 'default_user')&.destroy
    end
  
  
end
