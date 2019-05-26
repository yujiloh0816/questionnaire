class Survey < ApplicationRecord
  has_many :questions
  # accepts_nested_attributes_for
  # ネストした属性を使用すると、親を通じて関連レコードに属性を保存できます。
  # https://api.rubyonrails.org/classes/ActiveRecord/NestedAttributes/ClassMethods.html#method-i-accepts_nested_attributes_for
  accepts_nested_attributes_for :questions
end
