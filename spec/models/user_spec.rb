require 'rails_helper'
describe User do
  describe '#create' do

    #全て存在していれば登録できる
    it "is valid with a nickname, email, password, password_confirmation, last_name, first_name, last_name_kana, first_name_kana, birthday" do
      user = build(:user)
      expect(user).to be_valid
    end

    #nicknameがないと登録できない
    it "is invalid without a nickname" do
      user = build(:user, nickname: "")
      user.valid?
      expect(user.errors[:nickname]).to include("を入力してください")
    end

    #nicknameが16文字以上は登録できない
    it "is invalid with a nickname that has more than 16 characters" do
      user = build(:user, nickname: "aaaaaaaaaaaaaaaa")
      user.valid?
      expect(user.errors[:nickname]).to include("15文字以内で記入してください")
    end

    #nicknameが15文字だと登録できる
    it "is valid with a nickname that has less than 15 characters " do
      user = build(:user, nickname: "aaaaaaaaaaaaaaa")
      expect(user).to be_valid
    end

    #emailがないと登録できない
    it "is invalid without a email" do
      user = build(:user, email: "")
      user.valid?
      expect(user.errors[:email]).to include("を入力してください")
    end

    #emailのフォーマットが不適切であれば登録できない
    it "is invalid inappropriate a email" do
      user = build(:user, email: "aaaaaaa")
      user.valid?
      expect(user.errors[:email]).to include("フォーマットが不適切です")
    end

    #emailに'@'がなければ登録できない
    it "is invalid without a email '@'" do
      user = build(:user, email: "aaaa.aaa")
      user.valid?
      expect(user.errors[:email]).to include("フォーマットが不適切です")
    end

     #emailに'.'がなければ登録できない
     it "is invalid without a email '.'" do
      user = build(:user, email: "aaaa@aaa")
      user.valid?
      expect(user.errors[:email]).to include("フォーマットが不適切です")
    end

    #emailがすでに存在していれば登録できない
    it "is invalid with a duplicate email" do
      user = create(:user)
      another_user = build(:user)
      another_user.valid?
      expect(another_user.errors[:email]).to include("はすでに存在します", "既に登録されています")
    end

    #passwordがないと登録できない
    it "is invalid without a password" do
      user = build(:user, password: "")
      user.valid?
      expect(user.errors[:password]).to include("を入力してください")
    end

    #passwordが5文字だと登録できない
    it "is invalid with a password that has less than 5 character" do
      user = build(:user, password: "00000")
      user.valid?
      expect(user.errors[:password]).to include("は6文字以上で入力してください", "6文字以上で記入してください")
    end

     #passwordが6文字以上であれば登録できること
     it "is valid with a password that has more than 6 characters " do
      user = build(:user, password: "000000", password_confirmation: "000000")
      user.valid?
      expect(user).to be_valid
    end

    #password_confirmationがないと登録できない
    it "is invalid without a password_confirmation" do
      user = build(:user, password_confirmation: "")
      user.valid?
      expect(user.errors[:password_confirmation]).to include("とパスワードの入力が一致しません")
    end

    #last_nameがないと登録できない
    it "is invalid without a last_name" do
      user = build(:user, last_name: "")
      user.valid?
      expect(user.errors[:last_name]).to include("を入力してください")
    end

    #first_nameがないと登録できない
    it "is invalid without a first_name" do
      user = build(:user, first_name: "")
      user.valid?
      expect(user.errors[:first_name]).to include("を入力してください")
    end

    #last_name_kanaがないと登録できない
    it "is invalid without a last_name_kana" do
      user = build(:user, last_name_kana: "")
      user.valid?
      expect(user.errors[:last_name_kana]).to include("を入力してください")
    end

    #first_name_kanaがないと登録できない
    it "is invalid without a first_name_kana" do
      user = build(:user, first_name_kana: "")
      user.valid?
      expect(user.errors[:first_name_kana]).to include("を入力してください")
    end

    #birthdayがないと登録できない
    it "is invalid without a birthday" do
      user = build(:user, birthday: "")
      user.valid?
      expect(user.errors[:birthday]).to include("を入力してください")
    end
  end
end
