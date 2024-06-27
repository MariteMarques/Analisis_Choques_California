# Cargar el paquete

library(RSQLite)

# Conectar a la base de datos SQLite 

con <- dbConnect(RSQLite::SQLite(), dbname = "switrs.sqlite")


# Obtiene la lista de tablas en la base de datos

tablas <- dbListTables(con)


# Obtener la impresion de la variable u objeto

print(tablas)
 

# Cerrar conexion a la base de datos SQLite

dbDisconnect(con)