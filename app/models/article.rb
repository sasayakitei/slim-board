# == Schema Information
#
# Table name: articles
#
#  id          :bigint           not null, primary key
#  content     :text(65535)      not null
#  image       :string(255)
#  title       :string(255)      not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  category_id :bigint
#  user_id     :bigint
#
# Indexes
#
#  index_articles_on_category_id  (category_id)
#  index_articles_on_user_id      (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
class Article < ApplicationRecord
  belongs_to :users
  belongs_to :categories
end
