Spree::Taxon.class_eval do
  
  attr_accessible :page_id, :visible, :bg_image, :page_redirect
  belongs_to :page
  
  has_attached_file :bg_image,
      :styles => {:normal => '256x256>' },
      :default_style => :normal,
      :url => '/spree/taxons_bg/:id/:style/:basename.:extension',
      :path => ':rails_root/public/spree/taxons_bg/:id/:style/:basename.:extension',
      :default_url => '/assets/default_taxon_bg.png'
  
end