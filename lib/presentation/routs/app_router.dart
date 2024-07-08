import 'package:auto_route/auto_route.dart';
import 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {

  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: InitialRoute.page,initial: true),
    AutoRoute(page: SigningRoute.page),
    AutoRoute(page: SignInRoute.page),
    AutoRoute(page: SignUpRoute.page),
   AutoRoute(page: MainRoute.page),
    AutoRoute(page: HomeRoute.page ),
    AutoRoute(page: PostingRoute.page),
    AutoRoute(page: ProfileRoute.page),
    AutoRoute(page: MarketRoute.page),
    AutoRoute(page:PlayersRoute.page),
    AutoRoute(page:VideoRoute.page),
    AutoRoute(page:NewsRoute.page),



  ];
}