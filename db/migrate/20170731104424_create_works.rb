class CreateWorks < ActiveRecord::Migration[5.1]
  def change
    create_table :works do |t|
      t.belongs_to :user
      t.string :title
      t.string :description
      t.string :image
      t.string :url
      t.timestamps
    end
  end
end
