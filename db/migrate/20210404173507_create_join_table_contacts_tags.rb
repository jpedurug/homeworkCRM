class CreateJoinTableContactsTags < ActiveRecord::Migration[6.1]
  def change
    create_join_table :contacts, :tags do |t|
      # t.index [:contact_id, :tag_id]
      # t.index [:tag_id, :contact_id]
    end
  end
end
