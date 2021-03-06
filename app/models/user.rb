# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  email           :string
#  name            :string
#  password_digest :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
class User < ApplicationRecord
  validates :email, :uniqueness => { :case_sensitive => false }
  validates :email, :presence => true
  has_secure_password

  has_many(:products, { :class_name => "Product", :foreign_key => "owner_id", :dependent => :destroy })
  has_many(:recieved_bids, { :class_name => "Bid", :foreign_key => "sender_id", :dependent => :destroy })
  has_many(:sent_bids, { :class_name => "Bid", :foreign_key => "reciever_id", :dependent => :destroy })


end
