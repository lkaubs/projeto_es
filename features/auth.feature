Feature: User can login with password and e-mail

    As an user (administrator or normal one)
    I want to login into the service
    So that I can use the website

Background:

    Given I am on the login page

Scenario: User trying to login
    
    When I fill in "E-mail" with "admin@localhost.com"
    And I fill in "Senha" with "admin"
    And I press "Entrar"
    Then I should see the home page

Scenario: User trying to login with a wrong password

    When I fill in "E-mail" with "admin@localhost.com"
    And i fill in "Senha" with "ADMIN"
    And I press "Entrar"
    Then I should see "e-mail e/ou senha não corresponde a nenhum usuário cadastrado."

Scenario: User trying to login with an invalid e-mail

    When i fill in "E-mail" with "admin"
    Then I should see "Insira um e-mail valido."