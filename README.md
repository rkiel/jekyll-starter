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
echo > README.md
git init
git add .
git commit -m "Initial commit"
```

# Setup

If you want to start with the Bootstrap sample blog, run the following commands.  Otherwise, skip.

```unix
cat samples/bootsrap/.gitignore >> .gitignore
cp -r samples/bootsrap/_config.yml .
cp -r samples/bootsrap/_includes .
cp -r samples/bootsrap/_layouts .
cp -r samples/bootsrap/_posts .
cp -r samples/bootsrap/_sass .
cp -r samples/bootsrap/about.md .
cp -r samples/bootsrap/css .
cp -r samples/bootsrap/feed.xml .
cp -r samples/bootsrap/index.html .

git add .gitignore
git add _config.yml _includes _layouts _posts _sass about.md css feed.xml index.html
git commit -m "installed sample bootstrap"
```

Start up Vagrant and login

```unix
vagrant up
vagrant ssh jekyll
```

Setup rvm by going to the `/vagrant` directory for the first time.


```unix
cd /vagrant
```

If you didn't start with the Bootstrap sample blog, then create your new site

```unix
cd /vagrant
jekyll new --force .
```

Generate your new site.

```unix
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

