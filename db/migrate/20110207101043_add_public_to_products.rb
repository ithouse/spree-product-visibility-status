class AddPublicToProducts < ActiveRecord::Migration
  def self.up
    add_column :products, :public, :boolean, :default => true
  end

  def self.down
    remove_column :products, :public
  end
end
