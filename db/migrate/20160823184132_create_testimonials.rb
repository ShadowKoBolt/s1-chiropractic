class CreateTestimonials < ActiveRecord::Migration
  def change
    create_table :testimonials do |t|
      t.string :author
      t.text :body
      t.integer :position, default: 0
      t.boolean :show_on_home, default: true

      t.timestamps null: false
    end
  end
end
