import '../../../domain/entities/category.dart';
import '../../../domain/entities/product.dart';

const List<Category> mockCategories = [
  Category(id: '1', title: 'قهوه', imageUrl: 'assets/images/coffee.png'),
  Category(id: '2', title: 'نوشیدنی سرد', imageUrl: 'assets/images/cold.png'),
  Category(id: '3', title: 'دسر', imageUrl: 'assets/images/dessert.png'),

  Category(id: '4', title: 'پیتزا', imageUrl: 'assets/images/pizza.png'),
  Category(id: '5', title: 'دمنوش', imageUrl: 'assets/images/herbal.png'),
  Category(id: '6', title: 'برگر', imageUrl: 'assets/images/burger.png'),
  Category(id: '7', title: 'چای', imageUrl: 'assets/images/tea.png'),
  Category(id: '8', title: 'پاستا', imageUrl: 'assets/images/pasta.png'),
  Category(id: '9', title: 'پیش غذا', imageUrl: 'assets/images/starter.png'),
  Category(id: '10', title: 'صبحانه', imageUrl: 'assets/images/breakfast.png'),
  Category(id: '11', title: 'استیک', imageUrl: 'assets/images/steak.png'),
  Category(id: '12', title: 'معجون', imageUrl: 'assets/images/majoon.png'),
  Category(id: '13', title: 'شیک', imageUrl: 'assets/images/shake.png'),
];

const List<Product> mockProducts = [
  // --- قهوه ---
  Product(
    id: '1',
    categoryId: '1',
    title: 'اسپرسو',
    description: 'قهوه اسپرسو',
    imageUrl: '',
    price: 45000,
  ),
  Product(
    id: '2',
    categoryId: '1',
    title: 'کاپوچینو',
    description: 'قهوه با فوم شیر',
    imageUrl: '',
    price: 60000,
  ),
  Product(
    id: '3',
    categoryId: '1',
    title: 'لاته',
    description: 'قهوه با شیر گرم',
    imageUrl: '',
    price: 70000,
  ),

  // --- نوشیدنی سرد ---
  Product(
    id: '4',
    categoryId: '2',
    title: 'آیس لاته',
    description: 'قهوه سرد با شیر',
    imageUrl: '',
    price: 65000,
  ),
  Product(
    id: '5',
    categoryId: '2',
    title: 'موهیتو',
    description: 'نعناع، لیمو و یخ',
    imageUrl: '',
    price: 55000,
  ),
  Product(
    id: '6',
    categoryId: '2',
    title: 'لیموناد',
    description: 'لیموی تازه و نعناع',
    imageUrl: '',
    price: 50000,
  ),

  // --- دسر ---
  Product(
    id: '7',
    categoryId: '3',
    title: 'چیزکیک',
    description: 'چیزکیک کلاسیک',
    imageUrl: '',
    price: 90000,
  ),
  Product(
    id: '8',
    categoryId: '3',
    title: 'براونی',
    description: 'براونی شکلاتی',
    imageUrl: '',
    price: 85000,
  ),
  Product(
    id: '9',
    categoryId: '3',
    title: 'تیرامیسو',
    description: 'دسر ایتالیایی با قهوه',
    imageUrl: '',
    price: 95000,
  ),

  // --- پیتزا ---
  Product(
    id: '10',
    categoryId: '4',
    title: 'پیتزا مارگاریتا',
    description: 'سس گوجه، پنیر و ریحان',
    imageUrl: '',
    price: 180000,
  ),
  Product(
    id: '11',
    categoryId: '4',
    title: 'پیتزا پپرونی',
    description: 'پپرونی تند و پنیر',
    imageUrl: '',
    price: 220000,
  ),
  Product(
    id: '12',
    categoryId: '4',
    title: 'پیتزا قارچ و گوشت',
    description: 'قارچ، گوشت و پنیر',
    imageUrl: '',
    price: 240000,
  ),

  // --- دمنوش ---
  Product(
    id: '13',
    categoryId: '5',
    title: 'دمنوش نعناع',
    description: 'آرامش‌بخش و خوش‌عطر',
    imageUrl: '',
    price: 40000,
  ),
  Product(
    id: '14',
    categoryId: '5',
    title: 'دمنوش بابونه',
    description: 'آرام‌بخش و طبیعی',
    imageUrl: '',
    price: 45000,
  ),
  Product(
    id: '15',
    categoryId: '5',
    title: 'دمنوش دارچین',
    description: 'گرم و انرژی‌بخش',
    imageUrl: '',
    price: 45000,
  ),

  // --- برگر ---
  Product(
    id: '16',
    categoryId: '6',
    title: 'چیزبرگر',
    description: 'برگر با پنیر چدار',
    imageUrl: '',
    price: 150000,
  ),
  Product(
    id: '17',
    categoryId: '6',
    title: 'دوبل برگر',
    description: 'دو لایه گوشت',
    imageUrl: '',
    price: 190000,
  ),
  Product(
    id: '18',
    categoryId: '6',
    title: 'برگر مخصوص',
    description: 'سس ویژه و قارچ',
    imageUrl: '',
    price: 170000,
  ),

  // --- چای ---
  Product(
    id: '19',
    categoryId: '7',
    title: 'چای ایرانی',
    description: 'چای سیاه خوش‌عطر',
    imageUrl: '',
    price: 30000,
  ),
  Product(
    id: '20',
    categoryId: '7',
    title: 'چای ماسالا',
    description: 'ادویه‌دار و انرژی‌بخش',
    imageUrl: '',
    price: 55000,
  ),
  Product(
    id: '21',
    categoryId: '7',
    title: 'چای سبز',
    description: 'طبیعی و آرامش‌بخش',
    imageUrl: '',
    price: 40000,
  ),

  // --- پاستا ---
  Product(
    id: '22',
    categoryId: '8',
    title: 'پاستا آلفردو',
    description: 'سس سفید و مرغ',
    imageUrl: '',
    price: 180000,
  ),
  Product(
    id: '23',
    categoryId: '8',
    title: 'اسپاگتی بولونز',
    description: 'گوشت چرخ‌کرده و سس گوجه',
    imageUrl: '',
    price: 170000,
  ),
  Product(
    id: '24',
    categoryId: '8',
    title: 'پاستا پستو',
    description: 'سس ریحان و پنیر پارمزان',
    imageUrl: '',
    price: 200000,
  ),

  // --- پیش غذا ---
  Product(
    id: '25',
    categoryId: '9',
    title: 'سیب‌زمینی سرخ‌کرده',
    description: 'ساده و خوشمزه',
    imageUrl: '',
    price: 60000,
  ),
  Product(
    id: '26',
    categoryId: '9',
    title: 'قارچ سوخاری',
    description: 'ترد و طلایی',
    imageUrl: '',
    price: 80000,
  ),
  Product(
    id: '27',
    categoryId: '9',
    title: 'سالاد سزار',
    description: 'مرغ گریل و سس مخصوص',
    imageUrl: '',
    price: 120000,
  ),

  // --- صبحانه ---
  Product(
    id: '28',
    categoryId: '10',
    title: 'اوملت',
    description: 'تخم‌مرغ و گوجه تازه',
    imageUrl: '',
    price: 70000,
  ),
  Product(
    id: '29',
    categoryId: '10',
    title: 'پنکیک',
    description: 'با عسل یا نوتلا',
    imageUrl: '',
    price: 85000,
  ),
  Product(
    id: '30',
    categoryId: '10',
    title: 'صبحانه انگلیسی',
    description: 'تخم‌مرغ، سوسیس و لوبیا',
    imageUrl: '',
    price: 130000,
  ),

  // --- استیک ---
  Product(
    id: '31',
    categoryId: '11',
    title: 'استیک ریب‌آی',
    description: 'آبدار و لطیف',
    imageUrl: '',
    price: 320000,
  ),
  Product(
    id: '32',
    categoryId: '11',
    title: 'استیک نیویورک',
    description: 'پخت متوسط',
    imageUrl: '',
    price: 300000,
  ),
  Product(
    id: '33',
    categoryId: '11',
    title: 'فیله مینیون',
    description: 'نرم و درجه‌یک',
    imageUrl: '',
    price: 350000,
  ),

  // --- معجون ---
  Product(
    id: '34',
    categoryId: '12',
    title: 'معجون ویژه',
    description: 'مخلوط مغزیجات و بستنی',
    imageUrl: '',
    price: 95000,
  ),
  Product(
    id: '35',
    categoryId: '12',
    title: 'معجون انرژی‌زا',
    description: 'شیرموز + کنجد + عسل',
    imageUrl: '',
    price: 90000,
  ),
  Product(
    id: '36',
    categoryId: '12',
    title: 'معجون شکلاتی',
    description: 'کاکائو و بادام‌زمینی',
    imageUrl: '',
    price: 100000,
  ),

  // --- شیک ---
  Product(
    id: '37',
    categoryId: '13',
    title: 'شیک وانیل',
    description: 'وانیل + بستنی',
    imageUrl: '',
    price: 85000,
  ),
  Product(
    id: '38',
    categoryId: '13',
    title: 'شیک شکلات',
    description: 'کاکائو + بستنی',
    imageUrl: '',
    price: 90000,
  ),
  Product(
    id: '39',
    categoryId: '13',
    title: 'شیک توت‌فرنگی',
    description: 'توت تازه + بستنی',
    imageUrl: '',
    price: 95000,
  ),
];
