@reqresin
  Feature: Reqresin

    @Get-user
    Scenario: Success GET users
      When user send GET users request to reqresin
      Then response status code should be 200
      And response structure should match json schema "users.json"

    @Get-Single-User
    Scenario: Success GET Single user
      When user send GET Single users request to reqresin
      Then response status code should be 200
      And response structure should match json schema "single-user.json"

    @Post-login @Positive
    Scenario: Success POST login
      When user send POST login request to reqresin
      Then response status code should be 200
      And response structure should match json schema "login.json"

    @Post-login @Negative
    Scenario: Success POST Register
      When user send POST register request to reqresin
      Then response status code should be 200
      And response structure should match json schema "register.json"

    @Put-Update @Positive
    Scenario: Success PUT update
      When user send PUT Update request to reqresin
      Then response status code should be 200
      And response structure should match json schema "update-user.json"

    @Delete-user
    Scenario: Success Delete user
      When user send Delete user request to reqresin
      Then response status code should be 204
      #And response structure should match json schema "delete.json"

    @Post-login @Negative
    Scenario: Failed POST Login
      When user send POST login request to reqresin and faild email
      Then response status code should be 400
      And response structure should match json schema "unsuccess-login.json"

    @Patch-Update
    Scenario: Success PATCH update
      When user send PATCH Update request to reqresin
      Then response status code should be 200
      And response structure should match json schema "update-user-patch.json"
