class AddImageBdSkypeTelCityEngLevelPets < ActiveRecord::Migration[5.1]
  def change
    add_column :pets, :position_2, :text
    add_column :pets, :skills_2, :text
    add_column :pets, :expirience_2, :text
    add_column :pets, :company_2, :text
    add_column :pets, :salary_2, :integer
    add_column :pets, :birth_date_2, :text
    add_column :pets, :skype_2, :text
    add_column :pets, :telephone_2, :integer
    add_column :pets, :city_2, :text
    add_column :pets, :eng_lev_2, :text
  end
end











