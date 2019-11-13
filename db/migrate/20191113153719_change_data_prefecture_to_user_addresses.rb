class ChangeDataPrefectureToUserAddresses < ActiveRecord::Migration[5.2]
  def change
    change_column :user_addresses, :prefecture, :integer
  end
end
