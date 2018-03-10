class AddUniqueToNameFeatureFlag < ActiveRecord::Migration[5.1]
  def change
    add_index :feature_flags, :name, unique: true
  end
end
