class CreateAddTotalPostViewsToUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :add_total_post_views_to_users do |t|
      t.integer :total_post_views

      t.timestamps
    end
  end
end
