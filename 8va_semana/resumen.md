### Genera un scaffold de Libro

rails g scaffold Book name:string description:text price:string

### Ejecuta la migración anterior

rake db:migrate

### Genera una migración para agregar campo stock y editar una columna

rails g migration AddStockToBooks

```
class AddStockToBooks < ActiveRecord::Migration[6.0]
  def change
    add_column :Books, :stock, :integer
    change_column :Books, :price, :decimal
  end
end
```

### Ejecuta el archivo seed para precargar data

rake db:seed

### Creando la autenticación de usuarios

rails g scaffold User name:string email:string password:string

### Creando controlador de sesiones

rails g controller Sessions new

Nota: recordar siempre ejecutar las nuevas migraciones
