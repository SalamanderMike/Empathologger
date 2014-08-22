class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :title
      t.string :body
      t.references :eblog, index: true

      t.timestamps
    end
  end
end
