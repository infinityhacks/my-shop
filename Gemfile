source 'https://ruby.taobao.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


gem 'rails', '~> 5.0.0','>= 5.0.0.1'
gem 'mysql2', '>= 0.3.18', '< 0.5'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'therubyracer', platforms: :ruby
gem 'jquery-rails'
gem 'jbuilder', '~> 2.5'
group :development, :test do
  gem 'byebug', platform: :mri


  gem 'database_cleaner', '~> 1.5.3'
  gem 'rspec-rails', '~> 3.5'
  gem 'rails-controller-testing'

end
group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
gem 'bootstrap-sass'
gem 'font-awesome-rails'
gem 'sorcery'
#自身关联/自分类/继承
gem 'ancestry'
#分页
gem 'will_paginate'
#图片管理的gem
#官网： https://github.com/thoughtbot/paperclip
gem 'paperclip', '~> 5.0.0'
