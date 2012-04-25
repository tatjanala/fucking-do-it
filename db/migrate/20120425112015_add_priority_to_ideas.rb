class AddPriorityToIdeas < ActiveRecord::Migration
  def change
  	add_column :ideas, :priority, :string
  end
end
