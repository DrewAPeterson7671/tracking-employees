class CreateDivisions < ActiveRecord::Migration[6.0]
  def change
    create_table :divisions do |t|
      t.column(:div_name, :string)

      t.timestamps()
    end
  end
end
