Feature: sequence
  As a customer
  I want to both deposit and withdraw using ATM

Background:
  Given a customer with id 1 and pin 111 with balance 0.00 exists
  And I login to ATM with id 1 and pin 111

Scenario: Deposit and withdraw
  When I deposit 1000.00 using ATM
  And I withdraw 7.00 from ATM
  And I withdraw 35.00 from ATM
  And I withdraw 81.00 from ATM
  And I deposit 1000.00 using ATM
  And I withdraw 50.00 from ATM
  Then my account balance is 1827.00