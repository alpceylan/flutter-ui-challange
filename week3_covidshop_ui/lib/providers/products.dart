// Models
import '../models/product.dart';

class Products {
  List<Product> _products = [
      Product(
        title: 'Pro-Vac Venco',
        description: 'A COVID-19 vaccine manufacturing plant of the institute in Kumming, capital city Yunnan Province, will be put into use in the second half of 2020',
        imagePath: 'assets/images/pro-vac.png',
        price: 34.50,
        seller: 'johnsmith',
        showcase: true,
      ),
      Product(
        title: 'Live-B1 Hester',
        description: 'It is a live, CEO vaccine wherein the virus strain is cultivated in SPF eggs. It has been lyophilized (freeze-dried) in vials and sealed under vacuum to preserve stability. It is supplied with diluent.The product meets rigid \'Quality Control\' standards of Purity, Safety and Potency as per individual monographs of viral vaccines of B.P',
        imagePath: 'assets/images/live-b1.png',
        price: 19.99,
        seller: 'alpceylan',
        showcase: true,
      ),
      Product(
        title: 'Mask',
        description: 'Made of KN95 grade particulates and new PP non-woven fabric. It filters %98 of particuls.',
        imagePath: 'assets/images/mask.png',
        price: 5.00,
        seller: 'oliverbaker',
        showcase: false,
      ),
      Product(
        title: 'Soap',
        description: 'Soap is a salt of a fatty acid[1] used in a variety of cleansing and lubricating products. In a domestic setting, soaps are surfactants usually used for washing, bathing, and other types of housekeeping. In industrial settings, soaps are used as thickeners, components of some lubricants, and precursors to catalysts.',
        imagePath: 'assets/images/soap.png',
        price: 2.99,
        seller: 'harrybennet',
        showcase: false,
      ),
      Product(
        title: 'Gloves',
        description: 'A glove is a garment covering the whole hand. Gloves usually have separate sheaths or openings for each finger and the thumb.',
        imagePath: 'assets/images/gloves.png',
        price: 10.99,
        seller: 'mustafayilmaz',
        showcase: false,
      ),
      Product(
        title: 'Sanitizer',
        description: 'Disinfectants are chemical agents designed to inactivate or destroy microorganisms on inert surfaces.[1] Disinfection does not necessarily kill all microorganisms, especially resistant bacterial spores; it is less effective than sterilization, which is an extreme physical or chemical process that kills all types of life.',
        imagePath: 'assets/images/sanitizer.png',
        price: 21.50,
        seller: 'donaldthompson',
        showcase: false,
      ),
    ];

    final List<String> _productTypes = [
      'Vaccine',
      'Sanitizer',
      'Mask',
      'Gloves',
      'Disinfectant',
      'Hat',
    ];

    List<Product> get products {
      return [..._products];
    }

    List<String> get types {
      return [..._productTypes];
    }
}