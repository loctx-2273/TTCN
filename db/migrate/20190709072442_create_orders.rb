class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.integer :status, default: 1
      t.string :name
      t.string :phone
      t.string :address
      t.float :total_price
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
