class CreateSponsorhips < ActiveRecord::Migration
  def change
    create_table :sponsorships do |t|
      t.integer :amount
      t.references :player, index: true, foreign_key: true
      t.references :sponsor, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
