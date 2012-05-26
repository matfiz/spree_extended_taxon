Deface::Override.new(:virtual_path  => "spree/admin/taxons/_form",
            :insert_bottom => "[data-hook='admin_inside_taxon_form']",
            :partial          => "spree/admin/taxons/extended_form",
            :name          => "admin_taxons_extended")