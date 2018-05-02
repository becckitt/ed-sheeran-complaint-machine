class CreateComplaints < ActiveRecord::Migration[5.2]
  def change
    create_table :complaints do |t|
      t.text :body
      t.string :song

      t.timestamps
    end
  end
end
