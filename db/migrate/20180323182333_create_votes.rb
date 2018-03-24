class CreateVotes < ActiveRecord::Migration[5.1]
  def change
    create_table :votes do |t|
      t.references :user, foreign_key: true
      t.references :project, foreign_key: true
	  t.integer :status, default: 0
      t.text :comment
      t.timestamps
    end
  end
end
