Sequel.migration do
  up do
    create_table :tasks do
      primary_key :id
      String :name
    end
  end

  down do
    drop_table :tasks
  end
end
