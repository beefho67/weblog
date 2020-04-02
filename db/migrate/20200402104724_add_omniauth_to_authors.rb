class AddOmniauthToAuthors < ActiveRecord::Migration[6.0]
  def change
    add_column :authors, :provider, :string
    add_column :authors, :uid, :string
  end
end
