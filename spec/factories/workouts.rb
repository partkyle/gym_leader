FactoryGirl.define do
  factory :workout do
    sequence(:key) { |n| "key_#{n}" }
    sequence(:name) { |n| "name_#{n}" }
    description """

      This is a long description

      It should span multiple lines

    """
  end
end
