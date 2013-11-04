# Let's get you developing!

Getting a new development environment up and running can be a laborious process. Fortunately for you, we've eliminated all of the pain that we possibly can. :)

Unfortunately, the below instructions only apply to folks running OS X. If you aren't on a Mac, never fear! One of our intrepid instructors can still help you get set up.

![Testimonial](https://f.cloud.github.com/assets/2220/1468788/82ce5ab4-4598-11e3-8eaf-1ec263c107be.png)

*The reviews are in.*

## Dependencies

Before we get started, we'll need to **install the Xcode Command Line Tools.** This installs a command line program known as `gcc`, which is used to compile C programs from their source. Boxen will use this to install a number of applications for us.

### Mavericks

If you're running Mavericks, simply run the following command in the terminal:

```console
xcode-select --install
```

![Xcode popup window](http://macops.ca/wp-content/uploads/2013/10/xcodeselect-install.png)

In the popup window, click the "Install" button. After that finishes installing, run the following command:

```console
sudo gcc
```

You'll be prompted for your OS X password, at which point you'll need to hit the enter key to view the license agreement. At that point, simply press "q", type out "agree", and then hit enter. Now you're all set!

### Lion/Mountain Lion

If you're running Lion or Mountain Lion, follow these instructions:

1. Install Xcode from the Mac App Store.
2. Open Xcode.
3. Open the Preferences window (Cmd-,).
4. Go to the Downloads tab.
5. Install the Command Line Tools.

You'll also need to create a GitHub account, if you haven't already.

### Snow Leopard

Are you running on Snow Leopard? Then you'll just need to [download and install this](https://github.com/downloads/kennethreitz/osx-gcc-installer/GCC-10.6.pkg) instead.

Unfortunately, **Boxen won't run on Snow Leopard**. But never fear! One of our intrepid instructors can get you set up with a manual install. Just be sure to install the GCC package linked above beforehand.

## WARNING

### Uninstall rvm and rbenv

If you have already installed RVM or rbenv, then you'll need to uninstall it before attempting to use these instructions. Don't remember if you installed it? Just type `rvm` and then `rbenv` into the terminal. If you see anything other than `command not found`, then you have them installed.

To uninstall RVM, just run the following in the terminal:

```console
rm -rf ~/.rvm
```

To uninstall rbenv, just run the following in the terminal:

```console
rbenv uninstall
```

### Uninstall homebrew

You'll also need to uninstall homebrew, if you have already installed it (if you don't know what homebrew is, then you probably haven't). To test for the presence of homebrew, just run `brew` at the terminal. If you see anything other than `command not found`, then you have it installed. To uninstall homebrew, run the following in the terminal:

```console
curl -L https://gist.github.com/mxcl/1173223/raw/a833ba44e7be8428d877e58640720ff43c59dbad/uninstall_homebrew.sh | sh
```

Don't worry, we`re about to reinstall it, along with everything else we need.

## Okay, let's do this…

Now for the fun part! Head on over to [this page](http://makersquare-student-boxen.herokuapp.com/), copy the line of text you see, and paste it into the terminal. Press enter, then wait as it asks first for your user password on OS X, and then for your GitHub username and password (maybe).

From there, sit back and relax as the script does its thing. When it's all over with, run this:

```console
echo 'source /opt/boxen/env.sh' >> ~/.zshrc
```

Now you're rocking a souped up dev environment!

### Optional

…but highly recommended. You should install `oh-my-zsh`, a package for working with the terminal, as it will make your life easier:

```console
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh
```

After that's finished up, run this:

```console
echo 'source /opt/boxen/env.sh' >> ~/.zshrc
```

You should also [install our dotfiles](http://github.com/makersquare/dotfiles), which are the configuration files that control your development environment. Ours are tailored to the type of development we'll be doing at MakerSquare, and they'll keep your environment close to what we run in the lab.

### There is no step 4

You're all set! Your setup is now mostly identical to the way our lab machines work.

## What was installed?

Quite a number of things, actually! Here are the highlights:
 
| Package                                             | Purpose                                                                      |
| --------------------------------------------------- | ---------------------------------------------------------------------------- |
| [homebrew](http://brew.sh/)                         | A "package manager" for OS X. Makes installing command-lines tools a snap.   |
| [git](http://brew.sh/)                              | A source code management tool. 												 |
| Ruby 2.0.0-p247                                     | The latest stable version of Ruby. 										     |
| [Alfred](http://www.alfredapp.com/)                 | An (awesome) quick program launcher.  										 |
| [SizeUp](http://www.irradiatedsoftware.com/sizeup/) | An easy-to-use window resizer. 												 |
| [iTerm2](http://www.iterm2.com/)                    | A replacement for the built-in Terminal app. Much more customizable. 	     |
| [zsh](http://www.zsh.org/)                          | A replacement for Bash, the default shell environment. 						 |
| [Sublime Text 2](http://www.sublimetext.com/)       | A beautiful, easy-to-use text editor.                                        |
| [Mou](http://mouapp.com/)                           | A [Markdown](http://daringfireball.net/projects/markdown/) text editor.      |
| Chrome, Firefox                                     | Web browsers. (You probably knew that.)                                      |
| [Dropbox](https://www.dropbox.com/)                 | A cloud-based filesharing service.                                           |
| [Postgres.app](http://postgresapp.com)              | An easy way to run [Postgres](http://www.postgresql.org/) databases locally. |

Don't worry if you already have any of this stuff - Boxen is smart enough to skip over anything that's been previously installed.

## Troubleshooting

The easiest way to clear up errors on an install is to try turning it off and on again:

```console
sudo rm -rf /opt/boxen
```

This will delete the boxen files entirely, allowing you to start over from the beginning. Be sure to **PASTE THAT COMMAND IN EXACTLY**, as mistyping it could, ya know, destroy every file on your computer.

The most likely source of pain is forgetting to source the boxen environment:

```console
echo 'source /opt/boxen/env.sh' >> ~/.zshrc
```

Questions/comments/concerns? Grab an instructor and let us know! If you're not behind the Big Blue Doors, just email mike or matt [at] themakersquare.com and we'll get you squared away.
