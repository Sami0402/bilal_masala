class Validations {

  static String? editProductName (String? name){
    if (name == null || name.trim().isEmpty) {
      return 'Product Name is empty';
    } else {
      return null;
    }
  }
  static String? editSize (String? size){
    if (size == null || size.trim().isEmpty) {
      return 'Size is empty';
    } else {
      return null;
    }
  }
  static String? editPrice (String? price){
    if (price == null || price.trim().isEmpty) {
      return 'Price is empty';
    } else {
      return null;
    }
  }
  static String? manualEntryQuantity (String? quantity){
    if (quantity == null || quantity.trim().isEmpty) {
      return 'Quantity is empty';
    } else {
      return null;
    }
  }
  static String? manualEntrySize (String? size){
    if (size == null || size.trim().isEmpty) {
      return 'Size is empty';
    } else {
      return null;
    }
  }
  static String? manualEntryPrice (String? price){
    if (price == null || price.trim().isEmpty) {
      return 'Price is empty';
    } else {
      return null;
    }
  }

  
}