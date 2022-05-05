class AddLinkJointable < ActiveRecord::Migration[5.2]
  def change
    add_reference :join_tables, :dog, foreign_key: true
    add_reference :join_tables, :stroll, foreign_key: true
  end
end
