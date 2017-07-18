class AddDateToSponsorship < ActiveRecord::Migration
  def change
    add_column :sponsorships, :date, :datetime
  end
end
