class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :name
      t.string :email
      t.text :address
      t.references :user, index: true

      t.timestamps
    end
  end
end
