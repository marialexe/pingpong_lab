class AddAmountToSponsor < ActiveRecord::Migration
  def change
    add_column :sponsors, :amount, :integer
  end
end
