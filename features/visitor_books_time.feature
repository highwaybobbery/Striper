Feature:
    As a visitor
    I want to book time with alex
    so that he can fix my problems

    @javascript
    Scenario: book time
    Given I visit the booking page
    Then I can book time
    And I see the booking
