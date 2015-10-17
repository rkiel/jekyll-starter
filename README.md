# Installation

Create a working directory

```unix
mkdir -p ~/GitHub/$USER
cd ~/GitHub/$USER
```

Clone the repository and give it a new name (i.e. MY_NEW_SITE)
```unix
git clone git@github.com:rkiel/jekyll-starter.git MY_NEW_SITE
cd MY_NEW_SITE
```

Make the repository your own

```unix
rm -rf .git
git init
git add .
git commit -m "Initial commit"
```

# Setup

Start up Vagrant and login

```unix
vagrant up
vagrant ssh jekyll
```

Setup rvm by going to the `/vagrant` directory for the first time.


```unix
cd /vagrant
```

Create and generate your new site

```unix
cd /vagrant
jekyll new --force .
jekyll serve -H 192.168.33.10
```

Verify your new site is up and running by clicking [http://192.168.33.10:4000](http://192.168.33.10:4000)

Exit Vagrant

```unix
exit
```

Commit your new site

```unix
echo '.vagrant' >> .gitignore
git add .gitignore
git add .
git commit -m "Created new site"
```

