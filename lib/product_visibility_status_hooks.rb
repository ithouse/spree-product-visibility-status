class ProductVisibilityStatusHooks < Spree::ThemeSupport::HookListener
  # custom hooks go here
  insert_before :admin_product_form_right do
    %(
    <%= f.label :public %><br />
    <%= f.check_box :public  %>
    )
  end
end
