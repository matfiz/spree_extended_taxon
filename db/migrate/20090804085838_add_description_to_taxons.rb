class AddDescriptionToTaxons < ActiveRecord::Migration
    def self.up
      # skip this migration if the attribute already exists
      return if column_exists?(:spree_taxons, :description)
      add_column :spree_taxons, :description, :text
    end

    def self.down
      remove_column :spree_taxons, :description
    end
end
