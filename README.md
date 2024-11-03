# API de Productos

## Endpoint

### Crear Producto

- **URL:** `http://localhost:8080/api/productos`
- **Método:** `POST`
- **Encabezados:**
    - `Content-Type`: `application/json`

### Cuerpo de la Solicitud

A continuación se muestra un ejemplo del cuerpo de la solicitud en formato JSON para crear un nuevo producto:

```json
{
    "nombre": "manzana",
    "categoria": "fruta",
    "precio": 100.0,
    "stock": 5
}
