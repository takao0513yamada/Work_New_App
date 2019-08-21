class Book < ApplicationRecord
  validates :title, presence: true
  validates :title, uniqueness: true

  attr_accessor :title, :price

  def initialize(title:, price:)
    @title = title
    @price = price
  end

  def check_price
    if @price <= 0
      "#{@title}の価格が#{@price}円のため保存できません"
    else
      "#{@title}を新規保存しました"
    end
  end
end
