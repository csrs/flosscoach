class AddColumnFacebookLinkToUser < ActiveRecord::Migration
  def change
    add_column :users, :facebook_link, :string
  end
end
