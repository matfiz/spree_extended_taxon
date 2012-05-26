class AddFieldsToTaxons < ActiveRecord::Migration
    def self.up
      add_column :spree_taxons, :page_id, :integer
      add_column :spree_taxons, :visible, :boolean
    end

    def self.down
      remove_column :spree_taxons, :page_id
      remove_column :spree_taxons, :visible, :default => true
    end
end
