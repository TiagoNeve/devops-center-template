/**
 * @description Selector class to User object.
 */
public inherited sharing class UserSelector {
  /**
   * @description Get user by Id
   * @parameter Id - User record Id
   * @return User record
   */
  public User getUserById(Id userId) {
    return [SELECT Id, Name, Email FROM User WHERE Id = :userId LIMIT 1];
  }

  /**
   * @description Get user's by Id's
   * @parameter Set<Id> - User records Id
   * @return User records
   */
  public List<User> getUsersBySetId(Set<Id> usersId) {
    return [SELECT Id, Name, Email FROM User WHERE Id IN :usersId];
  }

  /**
   * @description Get users by email
   * @parameter String - User email
   * @return User records
   */
  public List<User> getUsersByEmail(String email) {
    return [SELECT Id, Name, Email FROM User WHERE Email = :email];
  }
}
