class AddUserRefToClassifieds < ActiveRecord::Migration[7.0]
  def change
    add_reference :classifieds, :user, null: true, foreign_key: true

  end
end
