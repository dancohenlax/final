# == Schema Information
#
# Table name: bids
#
#  id          :integer          not null, primary key
#  status      :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  product_id  :integer
#  reciever_id :integer
#  sender_id   :integer
#
class Bid < ApplicationRecord

  belongs_to(:product, { :required => true, :class_name => "Product", :foreign_key => "product_id" })
  belongs_to(:sender, { :required => true, :class_name => "User", :foreign_key => "sender_id" })
  belongs_to(:reciever, { :required => true, :class_name => "User", :foreign_key => "reciever_id" })
end
