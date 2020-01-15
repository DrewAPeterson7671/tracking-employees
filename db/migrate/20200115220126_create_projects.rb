class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.column(:title, :string)
      t.column(:employee_id, :integer)

      t.timestamps()
    end
  end
end
