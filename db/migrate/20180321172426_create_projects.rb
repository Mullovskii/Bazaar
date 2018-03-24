class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :link
      t.integer :status
      t.integer :relation

      t.text :description

      t.text :investors

      t.text :product
      t.text :problem
      t.text :product_status
      t.text :product_schedule

      t.text :git
      t.text :white_paper

      t.text :comptetitors

      t.text :website
      t.text :telegram
      t.text :twitter
      t.text :reddit
      t.text :bitcointalk
      t.text :medium
      t.text :slack
      
      t.text :tokenomics
      t.text :token_use

      t.text :hype_summary
      t.text :ico_drops
      t.text :ico_bench
      t.text :ico_rating
      t.text :ico_tracker
      t.text :ico_check
      t.text :top_7_ico
      t.text :very_high_ico
      
      
      t.text :team_description
      t.text :team_ativity
      
      
      t.text :summary
      t.text :pros
      t.text :cons

      t.references :user, foreign_key: true
      

      t.timestamps
    end
  end
end
