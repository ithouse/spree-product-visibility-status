SpreeProductVisibilityStatus
=======================

Adds public flag to Products so it is necessary to have available_on date and public flag set to true to view product in frontend

Works with Spree 0.40.x

Instalation
=======
* Add `gem "spree_product_visibility_status", :git => "git://github.com/krists/spree-product-visibility-status.git"` to Gemfile
* In your project root directory
  * rake spree_product_visibility_status:install:migrations
  * rake db:migrate


Copyright (c) 2011 Krists Ozols, released under the New BSD License
