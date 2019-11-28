class CreateAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :answers do |t|
      t.string :name
      t.boolean :present
      t.boolean :mairie
      t.boolean :absent
      t.text :comment
      t.integer :number_of_invites
      t.string :invite1
      t.string :invite2
      t.string :invite3
      t.string :invite4
      t.string :invite5
      t.string :invite6
    end
  end
end
