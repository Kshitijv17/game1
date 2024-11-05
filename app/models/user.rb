class User < ApplicationRecord
    after_create :log_new_user
  
   
    #has_many
    has_many :orders
    has_many :products, through: :orders 

    #has_one
    has_one :profile


      validates :name, presence: true

    private
      def log_new_user
        puts "A new user was registered"
      end
  end
  