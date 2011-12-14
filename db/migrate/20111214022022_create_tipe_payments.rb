class CreateTipePayments < ActiveRecord::Migration
  def change
    create_table :tipe_payments do |t|
      t.string :tipe

      t.timestamps
    end
  end
end
