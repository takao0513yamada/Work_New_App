require 'rails_helper'

RSpec.describe Book, type: :model do
  describe "check_price" do
    it "本の価格が０円以下の場合、保存できない。" do
      book = Book.new(title: "Ruby本", price: -1)
      expect(book.check_price).to eq "Ruby本の価格が-1円のため保存できません"
    end
    it "本の価格が０円以上の場合、保存できる" do
      book = Book.new(title: "Ruby本", price: 1000)
      expect(book.check_price).to eq "Ruby本を新規保存しました"
    end
  end
end
