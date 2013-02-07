class CreateBlorghPostals < ActiveRecord::Migration
  def change
    create_table :blorgh_postals do |t|
      t.string :title
      t.text :text

      t.timestamps
    end
  end
end
