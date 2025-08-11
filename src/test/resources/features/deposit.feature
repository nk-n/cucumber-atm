Feature: deposit
  As a customer
  I want to deposit money to my account using ATM

Background:
  Given a customer with id 1 and pin 111 with balance 200.00 exists
  And I login to ATM with id 1 and pin 111
  
Scenario: Deposit positive amount
  When I deposit 125.00 using ATM
  Then my account balance is 325.00
  
Scenario: Deposit 3 times with different amount each time
  When I deposit 125.00 using ATM
  And I deposit 55.00 using ATM
  And I deposit 1.50 using ATM
  Then my account balance is 381.50
  