class Submission
  include MongoMapper::Document

  key :name, String, :required => true
  key :email, String, :required => true, :email => true

end
