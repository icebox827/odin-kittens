class CreateKittens < ActiveRecord::Migration[6.1]
  def change
    create_table :kittens do |t|
      t.string :mae
      t.integer :age
      t.string :cuteness
      t.string :softness

      t.timestamps
    end
  end
end
