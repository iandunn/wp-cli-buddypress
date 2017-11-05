Feature: Manage BuddyPress Group Members

  Scenario: Add a member to a group
    Given a WP install

    When I run `wp bp group member add 3 10`
    Then STDOUT should contain:
      """
      Success: Added member #3 (user_login) to group #3 (group_name) as member.
      """

  Scenario: Remove a member from a group
    Given a WP install

    When I run `wp bp group member remove 3 10`
    Then STDOUT should contain:
      """
      Success: Member (#10) removed from the group #3.
      """

  Scenario: Get a list of groups a user is a member of
    Given a WP install

    When I run `wp bp group member get_groups --user-id=30`
    Then STDOUT should contain:
      """
      Success: Found 10 groups from member #30.
      Success: Current groups from member #30: 156,454,545
      """
