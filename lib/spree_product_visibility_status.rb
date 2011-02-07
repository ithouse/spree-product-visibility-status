require 'spree_core'
require 'spree_product_visibility_status_hooks'

module SpreeProductVisibilityStatus
  class Engine < Rails::Engine

    config.autoload_paths += %W(#{config.root}/lib)

    def self.activate
      Dir.glob(File.join(File.dirname(__FILE__), "../app/**/*_decorator*.rb")) do |c|
        Rails.env.production? ? require(c) : load(c)
      end

      Product.class_eval do
        scope :available, available.where(:public => true)
        scope :active, not_deleted.available
      end

    end

    config.to_prepare &method(:activate).to_proc
  end
end
