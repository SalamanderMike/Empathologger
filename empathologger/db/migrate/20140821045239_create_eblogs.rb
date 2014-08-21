class CreateEblogs < ActiveRecord::Migration
  def change
    create_table :eblogs do |t|
      t.string :author
      t.string :title
      t.string :content
      t.timestamps
    end
  end
end
