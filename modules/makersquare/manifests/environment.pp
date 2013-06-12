class makersquare::environment {
  include github_for_mac

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
    version => '2.0.0'
  }

  class { 'nodejs::global':
    version => 'v0.10.5'
  }

  include postgresql
  include redis

  package {
    [
      'wget'
    ]:
  }
}