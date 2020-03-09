class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :ruby
      t.string :email
      t.string :item
      t.text :content

      t.timestamps
    end
  end
end
