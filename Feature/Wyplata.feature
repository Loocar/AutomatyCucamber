Feature: Wyplata
  Scenario: Wyplata1
    Given stan konta 200
    When wyplacamy 500 pln
    Then wstapił error o przekroczeniu srodkow
    Then wyswitl kwote  jaka zostala  wyplacona powinna byc 200
    Then wyswitlamy stan i sprawdzamy konta czy prawdlowy 0

  Scenario: Wyplata2
    Given stan konta 200
    When wyplacamy 0 pln
    Then kwota która jest zwracana powinna byc taka jak wyplacana
    And wyplacamy 50 pln
    Then kwota która jest zwracana powinna byc taka jak wyplacana
    And wyplacamy 100 pln
    Then kwota która jest zwracana powinna byc taka jak wyplacana
    And wyplacamy 150 pln
    Then kwota która jest zwracana powinna byc taka jak wyplacana
    And wyplacamy 200 pln
    Then kwota która jest zwracana powinna byc taka jak wyplacana
    Then wyswitlamy stan i sprawdzamy konta czy prawdlowy powinno być 50