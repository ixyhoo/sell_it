class SetUserNotNullInClassifieds < ActiveRecord::Migration[7.0]
  
    def up
      # Créez un nouvel utilisateur par défaut ou trouvez un utilisateur existant pour être utilisé comme référence.
      default_user = User.create!(fullname: 'Default User', username: 'default_user', password: 'default_password', password_confirmation: 'default_password')
      
      # Associez tous les enregistrements de classifieds sans user_id au nouvel utilisateur par défaut.
      Classified.where(user_id: nil).update_all(user_id: default_user.id)
      
      # Changez la colonne user_id pour qu'elle soit NOT NULL.
      change_column_null(:classifieds, :user_id, false)
    end
  
    def down
      # Rétablissez la possibilité d'avoir des valeurs NULL pour la colonne user_id.
      change_column_null(:classifieds, :user_id, true)
      
      # Supprimez le nouvel utilisateur par défaut si vous souhaitez annuler cette migration.
      User.find_by(username: 'default_user')&.destroy
    end
  
  
end
