require 'rails_helper'

# RSpec.describe Items, type: :model do
#   pending "add some examples to (or delete) #{__FILE__}"
# end

describe Item do
  describe "#create" do
    # 検証：適正に保存できる
    it "is valid with a seller_id, name, description, category_id, condition, postage_burden, sending_method, prefecture_from, shipping_date, price" do
      item = build(:item)
      expect(item).to be_valid
    end
    # 検証：presence: true の確認
    it "is invalid without a seller_id" do
      item = build(:item, seller_id: nil)
      item.invalid?
      expect(item.errors[:seller_id]).to include("を入力してください")
    end

    it "is invalid without a name" do
      item = build(:item, name: nil)
      item.invalid?
      expect(item.errors[:name]).to include("を入力してください")
    end

    it "is invalid without a description" do
      item = build(:item, description: nil)
      item.invalid?
      expect(item.errors[:description]).to include("を入力してください")
    end

    it "is invalid without a category_id" do
      item = build(:item, category_id: nil)
      item.invalid?
      expect(item.errors[:category_id]).to include("を入力してください")
    end

    it "is invalid without a condition" do
      item = build(:item, condition: nil)
      item.invalid?
      expect(item.errors[:condition]).to include("を入力してください")
    end

    it "is invalid without a postage_burden" do
      item = build(:item, postage_burden: nil)
      item.invalid?
      expect(item.errors[:postage_burden]).to include("を入力してください")
    end

    it "is invalid without a sending_method" do
      item = build(:item, sending_method: nil)
      item.invalid?
      expect(item.errors[:sending_method]).to include("を入力してください")
    end

    it "is invalid without a prefecture_from" do
      item = build(:item, prefecture_from: nil)
      item.invalid?
      expect(item.errors[:prefecture_from]).to include("を入力してください")
    end

    it "is invalid without a shipping_date" do
      item = build(:item, shipping_date: nil)
      item.invalid?
      expect(item.errors[:shipping_date]).to include("を入力してください")
    end

    it "is invalid without a price" do
      item = build(:item, price: nil)
      item.invalid?
      expect(item.errors[:price]).to include("を入力してください")
    end

    it "is invalid without a status" do
      item = build(:item, status: nil)
      item.invalid?
      expect(item.errors[:status]).to include("を入力してください")
    end
    

    # 検証：nameが40文字ちょうとで保存できる
    it "is valid with a name that has 40 character" do
      char_name = "a" * 40
      item = build(:item, name: char_name )
      expect(item).to be_valid
    end

    # 検証：nameが41文字以上で保存できない
    it "is invalid with a name that has more than 40 character" do
      overchar_name = "a" * 41
      item = build(:item, name: overchar_name )
      item.invalid?
      expect(item.errors[:name]).to include("は40文字以内で入力してください")
    end

    # 検証：descriptionが1000文字ちょうどで保存できる
    it "is valid with a description that has 1,000 charactor" do
      char_description = "a" * 1000
      item = build(:item, description: char_description )
      expect(item).to be_valid
    end

    # 検証：descriptionが1001文字以上で保存できない
    it "is invalid with a description that has more than 1,000 charactor" do
      overchar_description = "a" * 1001
      item = build(:item, description: overchar_description )
      item.invalid?
      expect(item.errors[:description]).to include("は1000文字以内で入力してください")
    end

    # 検証：priceが300ちょうどで保存できる
    it "is valid with a price that has 300" do
      item = build(:item, price: 300 )
      expect(item).to be_valid
    end

    # 検証：priceが300より小さい場合保存されない
    it "is invalid with a price that has less than 300 " do
      item = build(:item, price: 299 )
      item.invalid?
      expect(item.errors[:price]).to include("は300以上の値にしてください")
    end

    # 検証：priceが9,999,999ちょうどで保存できる
    it "is valid with a price that has 9,999,999" do
      item = build(:item, price: 9999999 )
      expect(item).to be_valid
    end

    # 検証：priceが9,999,999より大きい場合保存されない
    it "is invalid with a price that has more than 9,999,999 " do
      item = build(:item, price: 10000000 )
      item.invalid?
      expect(item.errors[:price]).to include("は9999999以下の値にしてください")
    end
  end
end
