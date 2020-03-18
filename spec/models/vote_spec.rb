# == Schema Information
#
# Table name: votes
#
#  id         :bigint           not null, primary key
#  score      :integer          default("0"), not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  article_id :bigint
#  user_id    :bigint
#
# Indexes
#
#  index_votes_on_article_id  (article_id)
#  index_votes_on_user_id     (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (article_id => articles.id)
#  fk_rails_...  (user_id => users.id)
#
require 'rails_helper'

RSpec.describe Vote, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
