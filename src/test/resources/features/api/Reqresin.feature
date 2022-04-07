@reqresin
  Feature: Reqresin

    Scenario: Success GET users
      When user send GET users request to reqresin
      Then response status code should be 200
      And response structure should match json schema "users.json"

    Scenario: Success GET Single user
      When user send GET Single users request to reqresin
      Then response status code should be 200
      And response structure should match json schema "single-user.json"

    Scenario: Success POST login
      When user send POST login request to reqresin
      Then response status code should be 200
      And response structure should match json schema "login.json"

    Scenario: Success POST Register
      When user send POST register request to reqresin
      Then response status code should be 200
      And response structure should match json schema "register.json"

    Scenario: Success PUT update
      When user send PUT Update request to reqresin
      Then response status code should be 200
      And response structure should match json schema "update-user.json"

    Scenario: Success Delete user
      When user send Delete user request to reqresin
      Then response status code should be 204
      #And response structure should match json schema "delete.json"