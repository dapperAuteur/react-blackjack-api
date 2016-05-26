class AddDefaultValuesToWinAndLossCounts < ActiveRecord::Migration[5.1]
  def change
    change_column_default :users, :win_count, 0
    change_column_default :users, :loss_count, 0
  end
end
