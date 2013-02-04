module PurchasesHelper
  def load_prices_path purchase
    purchase_path(purchase) + '/load_prices'
  end
  
  def preselect_path purchase
    purchase_path(purchase) + '/preselect'
  end

  def set_margins_path purchase
    purchase_path(purchase) + '/set_margins'
  end
end
