class CreateSearches < ActiveRecord::Migration
  def change
    create_table :searches do |t|
      t.references :eblog
      t.references :keyword
      t.timestamps
    end
  end
end
