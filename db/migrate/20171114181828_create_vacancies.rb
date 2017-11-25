class CreateVacancies < ActiveRecord::Migration[5.1]
  def change
    create_table :vacancies do |t|
      t.text :summary
      t.text :description
      t.text :company

      t.timestamps
    end
  end
end
