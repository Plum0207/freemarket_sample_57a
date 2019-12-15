FactoryBot.define do

  factory :user do
    nickname              {"tester"}
    email                 {"kkk@gmail.com"}
    password              {"00000000"}
    password_confirmation {"00000000"}
    last_name             {"山田"}
    first_name            {"太郎"} 
    last_name_kana        {"ヤマダ"} 
    first_name_kana       {"タロウ"} 
    birthday              {"2019-12-14"}
  end

end