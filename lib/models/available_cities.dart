enum AvailableCities {
  silverstone,
  saoPaulo,
  melbourne,
  monteCarlo,
}

extension AvailableCitiesX on AvailableCities {
  String get displayName {
    return switch (this) {
      AvailableCities.silverstone => 'Silverstone, UK',
      AvailableCities.saoPaulo => 'São Paulo, Brazil',
      AvailableCities.melbourne => 'Melbourne, Australia',
      AvailableCities.monteCarlo => 'Monte Carlo, Monaco',
    };
  }

  String get searchName {
    return switch (this) {
      AvailableCities.silverstone => 'silverstone, UK',
      AvailableCities.saoPaulo => 'sao Paulo, brazil',
      AvailableCities.melbourne => 'melbourne, australia',
      AvailableCities.monteCarlo => 'monte carlo, monaco',
    };
  }
}
