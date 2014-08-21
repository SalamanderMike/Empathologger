class CreateEblogs < ActiveRecord::Migration
  def change
    create_table :eblogs do |t|
      t.string :title
      t.string :description
      t.string :author

      t.timestamps
    end
  end
end
