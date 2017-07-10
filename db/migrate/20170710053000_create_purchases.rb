class CreatePurchases < ActiveRecord::Migration[5.0]
  def change
    create_table :purchases do |t|
      t.references :user, foreign_key: true
      t.references :book, foreign_key: true
      t.string :dialogue

      t.timestamps
    end
  end
end
