class AddIconToTaxons < ActiveRecord::Migration
    def self.up
      # skip this migration if the attribute already exists
      return if column_exists?(:spree_taxons, :icon_file_name)
      add_column :spree_taxons, :icon_file_name,    :string
      add_column :spree_taxons, :icon_content_type, :string
      add_column :spree_taxons, :icon_file_size,    :integer
      add_column :spree_taxons, :icon_updated_at,   :datetime
    end

    def self.down
      remove_column :spree_taxons, :icon_file_name
      remove_column :spree_taxons, :icon_content_type
      remove_column :spree_taxons, :icon_file_size
      remove_column :spree_taxons, :icon_updated_at
    end

end
