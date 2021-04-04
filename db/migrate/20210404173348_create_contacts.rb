class CreateContacts < ActiveRecord::Migration[6.1]
  def change
    create_table :contacts do |t|
      t.string :lastName
      t.string :firstName
      t.string :email

      t.timestamps
    end
  end
end
