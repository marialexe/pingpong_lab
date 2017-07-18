class RemoveAmountFromSponsorship < ActiveRecord::Migration
  def change
    remove_column :sponsorships, :amount
  end
end
