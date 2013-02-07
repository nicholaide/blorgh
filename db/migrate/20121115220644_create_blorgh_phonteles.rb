class CreateBlorghPhonteles < ActiveRecord::Migration
  def change
    create_table :blorgh_phonteles do |t|
      t.string :title
      t.text :text

      t.timestamps
    end
  end
end
