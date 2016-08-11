class CreateHomepageHeroImages < ActiveRecord::Migration
  def change
    create_table :homepage_hero_images do |t|
      t.integer :homepage_id
      t.string :image_id
      t.integer :order, default: 0

      t.timestamps null: false
    end
  end
end
