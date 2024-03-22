enum AvailableCities {
  silverstone,
  saoPaulo,
  melbourne,
  monteCarlo,
}

extension AvailableCitiesX on AvailableCities {
  String get searchName {
    return switch (this) {
      AvailableCities.silverstone => 'silverstone, UK',
      AvailableCities.saoPaulo => 'sao Paulo, brazil',
      AvailableCities.melbourne => 'melbourne, australia',
      AvailableCities.monteCarlo => 'monte carlo, monaco',
    };
  }
}
