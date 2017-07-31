class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.string :email
      t.string :title
      t.string :description
      t.string :image
      t.timestamps
    end
  end
end
