class CreatePolls < ActiveRecord::Migration[5.2]
  def change
    create_table :polls do |t|
      t.string :name
      t.string :email
      t.integer :edad
      t.string :sexo
      t.integer :question1
      t.integer :question2
      t.integer :question3
      t.integer :question4
      t.integer :question5
      t.integer :question6
      t.integer :question7
      t.integer :question8
      t.integer :question9
      t.integer :question10
      t.integer :question11
      t.integer :question12
      t.integer :question13
      t.integer :question14
      t.integer :question15
      t.integer :question16
      t.integer :question17
      t.integer :question18
      t.integer :question19
      t.integer :question20
      t.integer :question21
      t.integer :question22
      t.integer :question23
      t.integer :question24
      t.integer :question25
      t.integer :question26
      t.integer :question27
      t.integer :question28
      t.string :question29
      t.string :question30
      t.string :question31
      t.string :question32
      t.string :question33
      t.string :question34
      t.string :question35
      t.string :question36
      t.string :question37
      t.string :question38
      t.timestamps
    end
  end
end

