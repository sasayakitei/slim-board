# == Schema Information
#
# Table name: article_relations
#
#  id                :bigint           not null, primary key
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  article_id        :bigint
#  parent_article_id :bigint
#
# Indexes
#
#  index_article_relations_on_article_id         (article_id)
#  index_article_relations_on_parent_article_id  (parent_article_id)
#
# Foreign Keys
#
#  fk_rails_...  (article_id => articles.id)
#  fk_rails_...  (parent_article_id => articles.id)
#
FactoryBot.define do
  factory :article_relation do
    
  end
end
