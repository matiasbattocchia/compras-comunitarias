module ApplicationHelper
  def form_buttons
    if params[:save]
      yield
    else
      respond_to do |format|
        format.html { redirect_to orders_url }
      end
    end
  end

  def number_to_weight number
    number_to_human number, :units => :weight, separator: ','
  end
end
