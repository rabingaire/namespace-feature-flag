class CreateFeatureFlag < ActiveRecord::Migration[5.1]
  def change
    create_table :feature_flags do |t|
      t.string :name, null: false
      t.boolean :value, default: true
    end
  end
end
