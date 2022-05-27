# == Schema Information
#
# Table name: products
#
#  id          :integer          not null, primary key
#  description :string
#  image       :string
#  price       :string
#  title       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  owner_id    :integer
#
class Product < ApplicationRecord

  has_many(:bids, { :class_name => "Bid", :foreign_key => "product_id", :dependent => :destroy })
  belongs_to(:owner, { :required => true, :class_name => "User", :foreign_key => "owner_id" })

end
