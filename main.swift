// Definir una estructura para representar un producto
struct Product {
    let name: String
    let quantity: Int
    let price: Double
}

// Crear una lista de supermercado vacía
var shoppingList: [Product] = []

// Función para cargar un producto a la lista de supermercado
func addProduct(name: String, quantity: Int, price: Double) {
    let product = Product(name: name, quantity: quantity, price: price)
    shoppingList.append(product)
}

// Función para solicitar un valor de tipo Double desde la consola
func readDouble() -> Double? {
    if let input = readLine(), let value = Double(input) {
        return value
    }
    return nil
}

// Función para solicitar un valor de tipo Int desde la consola
func readInt() -> Int? {
    if let input = readLine(), let value = Int(input) {
        return value
    }
    return nil
}

// Solicitar al usuario los datos de los productos y cargarlos a la lista de supermercado
while true {
    print("Ingrese los datos del producto (o escriba 'fin' para terminar):")
    print("Nombre:")
    if let name = readLine(), name != "fin" {
        print("Cantidad:")
        if let quantity = readInt() {
            print("Precio:")
            if let price = readDouble() {
                addProduct(name: name, quantity: quantity, price: price)
            }
        }
    } else {
        break
    }
}

// Mostrar los productos de la lista con su precio por unidad y precio total por consola
for product in shoppingList {
    let totalProductPrice = Double(product.quantity) * product.price
    let unitPrice = product.price
    print("\(product.quantity) \(product.name) - Precio por unidad: \(unitPrice) - Precio total: \(totalProductPrice)")
}

// Función para calcular el precio total de la lista de supermercado
func calculateTotalPrice() -> Double {
    var totalPrice: Double = 0.0
    
    for product in shoppingList {
        totalPrice += Double(product.quantity) * product.price
    }
    
    return totalPrice
}

// Calcular y mostrar el precio total de la lista de supermercado
let totalPrice = calculateTotalPrice()
print("Precio total: \(totalPrice)")
