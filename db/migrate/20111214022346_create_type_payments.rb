class CreateTypePayments < ActiveRecord::Migration
  def change
    create_table :type_payments do |t|
      
      t.string :name
      
      t.timestamps
    end
  end
end
