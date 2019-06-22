FactoryBot.define do
  factory :answer do
    comment { "MyText" }
    significance { 1 }
    question { nil }
    checklist { nil }
  end
end
