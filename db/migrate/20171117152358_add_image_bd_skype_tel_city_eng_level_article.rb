class AddImageBdSkypeTelCityEngLevelArticle < ActiveRecord::Migration[5.1]
  def change
    add_column :articles, :photo_candidate, :string
    add_column :articles, :birth_date, :text
    add_column :articles, :skype, :text
    add_column :articles, :telephone, :text
    add_column :articles, :city, :text
    add_column :articles, :eng_lev, :text
  end
end
