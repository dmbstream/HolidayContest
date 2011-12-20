MongoMapper.config = { 
  Rails.env => { 'uri' => ENV['MONGOHQ_URL'] || 
                          'mongodb://localhost/sushi' } 
}

#MongoMapper.database = "dmbstream-holidaycontest-#{Rails.env}"

if ENV['MONGOHQ_URL'].present?
  MongoMapper.connect(Rails.env)
end
