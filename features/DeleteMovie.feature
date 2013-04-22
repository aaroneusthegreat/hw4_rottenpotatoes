Feature: User can manually delete movie

Background: movies have been added to database

  Given the following movies exist:
  | title                   | rating | release_date |
  | Star Wars    	    | PG     | 1977-05-25   |
  | The Terminator          | R      | 26-Oct-1984  |

  And  I am on the RottenPotatoes home page

Scenario: Delete a movie
	When I go to the details page for "Star Wars"
	When I press "Delete"
	And a confirmation box saying "Are you sure?" should pop up
	And I want to click "OK"
	Then I should be on the RottenPotatoes home page
	And I should not see "Star Wars"        
        And I should see "The Terminator"
	

