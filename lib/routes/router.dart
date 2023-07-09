import 'package:go_router/go_router.dart';
import 'package:scan_barcode_dua/screens/detail/detail_screen.dart';
import 'package:scan_barcode_dua/screens/product/product_screen.dart';

import '../screens/404/not_found_screen.dart';
import '../screens/home/home_screen.dart';

part './route_name.dart';

// GoRouter configuration
final router = GoRouter(
  errorBuilder: (context, state) => NotFoundScreen(),
  routes: [
    GoRoute(
      path: '/',
      name: Routes.home,
      builder: (context, state) => HomeScreen(),
      routes: [
        GoRoute(
          path: 'product',
          name: Routes.product,
          builder: (context, state) => ProductScreen(),
          routes: [
            GoRoute(
              path: ':id',
              name: Routes.detailProduct,
              builder: (context, state) => DetailScreen(
                state.pathParameters['id'].toString()
              ),
            )
          ],
        ),
      ],
    ),
  ],
);
