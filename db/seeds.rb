ActiveRecord::Base.transaction do
  ['common', Rails.env].each do |environment|
    
    seed_file = Rails.root.join(Rails.root, 'db', 'seeds', "#{environment}.rb")
    require seed_file if File.exists?(seed_file)
  end
end
