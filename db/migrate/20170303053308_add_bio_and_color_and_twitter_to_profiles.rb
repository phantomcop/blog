class AddBioAndColorAndTwitterToProfiles < ActiveRecord::Migration[5.0]
  def change
    add_column :profiles, :bio, :text
    add_column :profiles, :color, :string
    add_column :profiles, :twitter, :string
  end
end
