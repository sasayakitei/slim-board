class CreateArticleRelations < ActiveRecord::Migration[6.0]
  def change
    create_table :article_relations do |t|
      t.references :article, foreign_key: true
      t.references :parent_article, foreign_key: { to_table: :articles }
      t.timestamps
    end
  end
end
