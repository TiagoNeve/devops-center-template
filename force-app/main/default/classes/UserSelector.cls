public inherited sharing class UserSelector {
  public User getUserById(Id userId) {
    return [SELECT Id, Name, Email FROM User WHERE Id = :userId LIMIT 1];
  }

  public List<User> getUsersBySetId(Set<Id> usersId) {
    return [SELECT Id, Name, Email FROM User WHERE Id IN :usersId];
  }

  public User getUsersByEmail(String email) {
    return [SELECT Id, Name, Email FROM User WHERE Email = :email];
  }
}
