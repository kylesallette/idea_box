class CreateImage < ActiveRecord::Migration[5.1]
  def change
    create_table :images do |t|
      t.string :name
      t.string :url
    end
  end
end
