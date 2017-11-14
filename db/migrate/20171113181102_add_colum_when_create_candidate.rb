class AddColumWhenCreateCandidate < ActiveRecord::Migration[5.1]
  def change
    add_column :articles, :position, :text
    add_column :articles, :skills, :text
    add_column :articles, :expirience, :text
    add_column :articles, :status, :text
  end
end
