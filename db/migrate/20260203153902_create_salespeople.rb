class CreateSalespeople < ActiveRecord::Migration[8.1]
  def change
    create_table :salespeople do |t|
      t.timestamps
    end
  end
end
