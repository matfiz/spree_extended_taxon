Spree::Taxon.class_eval do
  
  attr_accessible :page_id, :visible
  belongs_to :page
  
end