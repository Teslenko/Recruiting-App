class AddDataToArticle < ActiveRecord::Migration[5.1]
  def change
    add_column :articles, :data, :integer
  end
end
