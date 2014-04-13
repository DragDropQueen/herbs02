Sequel.migration do
  up do
    add_column(:herbs, :part, String) do
    end
  end

  down do
    drop_column(:herbs, :part )
  end
end