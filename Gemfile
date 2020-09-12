source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.5'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 6.0.0'
# Use mysql as the database for Active Record
gem 'mysql2', '>= 0.5.3'
# Use Puma as the app server
gem 'puma', '~> 3.11'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5'
# Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
gem 'webpacker', '~> 4.0'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.7'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Active Storage variant
# gem 'image_processing', '~> 1.2'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.2', require: false

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'rspec-rails', '~> 4.0.0'
#RSpecを使用するためのgemを導入
#Rspecとは
 #・テストコード: プログラムがどのように振る舞うべきかを定義したもの
 #・プロダクトコード： テストコードで定義された振る舞いを実装したもの

#RSpecを使用できるように、専用のgemを導入する必要があります。
#'rspec-rails'をGemfileの:development, :testのグループの中に記述しました。
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'rubocop', require: false #（ルボコップ）はRubyの静的コード解析ツールです。「インデントが揃っていない」「余分な改行・スペースがある」などの指摘をRubyStyleGuideに基づいて行ってくれます。
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  # Easy installation and use of web drivers to run system tests with browsers
  gem 'webdrivers'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

gem 'pry-rails'

#Gemfileにrails_12factorを記述しましょう
#ここで注意することは、groupが:productionになっていることです。
#rails_12factorは、開発環境ではなく本番環境で使用するGemです。
#このように:productionで指定すると本番環境のみで使用されるように指定できます
group :production do
  gem 'rails_12factor'
end

gem 'active_hash'
#Active_Hashとは、都道府県名などの変更されないデータをモデルファイル内に直接記述することで、
#データベースへ保存せずにデータを取り扱うことができるGemです。
#すなわち、Active_Hashを用いることで、モデルファイルに直接記述した変更されないデータに対して、
#ActiveRecordのメソッドを用いることができます。

gem 'devise' #ユーザー管理機能を簡単に実装するためのGemです。。

gem 'mini_magick' # 「ImageMagick」とは、コマンドラインから簡単に画像の保存形式の変更などが行えるツールです。
gem 'image_processing', '~> 1.2'

gem 'payjp' #PAY.JPの機能を使えるようにgemを導入しました。

gem 'factory_bot_rails' #テストで使うGemを導入