class RenamePostIdToArticleId < ActiveRecord::Migration[5.0]
  def change
  	rename_column :comments, :post_id, :article_id
  end
end
