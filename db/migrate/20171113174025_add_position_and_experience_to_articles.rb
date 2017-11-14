class AddPositionAndExperienceToArticles < ActiveRecord::Migration[5.1]
  def change
    add_column :skills, :position, :text
    add_column :skills, :experience, :text
  end
end
