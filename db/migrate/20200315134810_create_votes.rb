class CreateVotes < ActiveRecord::Migration[6.0]
  def change
    create_table :votes do |t|
      t.integer :score, null: false, default: 0;
      t.references :user, foreign_key: true;
      t.references :article, foreign_key: true;
      t.timestamps
    end
  end
end
