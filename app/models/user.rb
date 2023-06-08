class User < ActiveRecord::Base
    has_many :expenses
    has_many :banks, through: :expenses
end