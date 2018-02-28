class ChangeHairColorToCity < ActiveRecord::Migration[5.1]
  def change
    rename column :peep, :hair_color, :city 
  end
end
