import 'package:dartz/dartz.dart';
import 'package:todo_paraguay_sa/app/core/errors/errors.dart';
import '../modules/home/best_price/domain/entities/best_price_entity.dart';
import '../modules/home/brands/domain/entities/brand_entity.dart';
import '../modules/home/carroucel/domain/entities/carroucel_entity.dart';
import '../modules/home/categories/domain/entities/category_entity.dart';

typedef Result<E> = Either<Failure, E>;

typedef CarroucelResult = Result<CarroucelEntity>;

typedef CategoriesResult = Result<List<CategoryEntity>>;

typedef BestPriceResult = Result<List<BestPriceEntity>>;

typedef BrandResult = Result<List<BrandEntity>>;
