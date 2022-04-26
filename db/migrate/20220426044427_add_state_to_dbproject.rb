class AddStateToDbproject < ActiveRecord::Migration[7.0]
  def change
    add_column :dbprojects, :state, :string, default:'propuesta'
  end
end
