class CreateGroupmemberships < ActiveRecord::Migration[7.0]
  def change
    create_table :groupmemberships do |t|
      t.belongs_to :group 
      t.belongs_to :user 
      t.integer :plane
      t.datetime :membershipdate

      t.timestamps
    end
  end
end
