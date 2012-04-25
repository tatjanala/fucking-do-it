class AddDoneToIdeas < ActiveRecord::Migration
  def change
    add_column :ideas, :done, :boolean

  end
end
