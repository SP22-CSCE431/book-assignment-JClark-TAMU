class CreateUserbooks < ActiveRecord::Migration[6.1]
  def change
    create_table :userbooks do |t|
      t.belongs_to :users
      t.belongs_to :books

      t.timestamps
    end
  end
end
