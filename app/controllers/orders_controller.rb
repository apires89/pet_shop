class OrdersController < ApplicationController
  def create
    pet = Pet.find(params[:pet_id])
    order = Order.create!(pet: pet, pet_sku: pet.sku, amount: pet.price, state: 'pending', user: current_user)
    session = Stripe::Checkout::Session.create(
      payment_method_types: ['card'],
      line_items: [{
        name: pet.sku,
        images: [pet.photo_url],
        amount: pet.price_cents,
        currency: 'eur',
        quantity: 1
      }],
      success_url: order_url(order),
      cancel_url: order_url(order)
    )

    order.update(checkout_session_id: session.id)
    redirect_to new_order_payment_path(order)

  end

  def show

    @order = current_user.orders.find(params[:id])

  end
end
