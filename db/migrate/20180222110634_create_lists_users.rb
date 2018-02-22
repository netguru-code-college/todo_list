class CreateListsUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :lists_users do |t|
      t.belongs_to :user
      t.belongs_to :list
    end
  end
end
