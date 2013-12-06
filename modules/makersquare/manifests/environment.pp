class makersquare::environment {
  include stdlib

  include alfred
  include sizeup

  include iterm2::stable

  include zsh
  include heroku
  include sublime_text_2
  sublime_text_2::package { 'Emmet':
    source => 'sergeche/emmet-sublime'
  }
  include mou

  include chrome
  include firefox
  include dropbox

  class { 'ruby::global':
    version => '2.0.0-p353'
  }

  class { 'nodejs::global':
    version => 'v0.10.22'
  }

  include postgresapp
  include redis

  package {
    [
      'wget'
    ]:
  }
}