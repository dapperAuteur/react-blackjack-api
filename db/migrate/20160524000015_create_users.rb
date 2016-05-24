class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :token
      t.integer :win_count
      t.integer :loss_count

      t.timestamps
    end
  end
end
