class CreateSearches < ActiveRecord::Migration
  def change
    create_table :searches do |t|
      t.references :eblogs
      t.references :keywords
      t.timestamps
    end
  end
end
