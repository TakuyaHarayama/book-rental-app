require 'faker'

FactoryGirl.define do
  factory :user do
    name Faker::Internet.user_name

    # 名無し
    factory :no_name do
      name nil
    end

    # 文字数オーバー
    factory :over_name do
      name Faker::Internet.user_name(50)
    end
  end
end
