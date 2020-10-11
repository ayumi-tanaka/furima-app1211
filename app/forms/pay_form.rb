class PayForm
  include ActiveModel::Model
  attr_accessor :item_id, :token, :postal_code, :prefecture_id, :city, :addresses, :building, :phone_number, :user_id
  def save
    order = Order.create(
      item_id: item_id,
      user_id: user_id
    )
    Address.create(
      order_id: order.id,
      postal_code: postal_code,
      prefecture_id: prefecture_id,
      city: city,
      addresses: addresses,
      building: building,
      phone_number: phone_number
    )
  end
end