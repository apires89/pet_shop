class AddPriceToTeddies < ActiveRecord::Migration[6.0]
  def change
    add_monetize :pets, :price, currency: { present: false }
  end
end
