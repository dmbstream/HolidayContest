MongoMapper.config = { 
  Rails.env => { 'uri' => ENV['MONGOHQ_URL'] || 
                          'mongodb://localhost/sushi' } 
}

#MongoMapper.database = "dmbstream-holidaycontest-#{Rails.env}"

MongoMapper.connect(Rails.env)
