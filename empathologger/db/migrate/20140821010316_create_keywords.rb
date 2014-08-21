class CreateKeywords < ActiveRecord::Migration
  def change
    create_table :keywords do |t|
      t.string :tagname

      t.timestamps
    end
  end
end
