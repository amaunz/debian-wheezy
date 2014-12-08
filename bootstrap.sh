apt-get update

# apt-file and update
apt-get install -y apt-file
apt-file update

# standard tools
apt-get install -y tree flip vim git subversion curl wget openjdk-7-jdk

# nodejs
curl -sL https://deb.nodesource.com/setup | bash -
apt-get install -y nodejs

# R
apt-key adv --keyserver keys.gnupg.net --recv-key 381BA480
echo "deb http://cran.rstudio.com/bin/linux/debian wheezy-cran3/" > /etc/apt/sources.list.d/cran.list
apt-get update
aptitude install -y r-base-core
cd /tmp
R --vanilla <<EOF
  download.file("http://www.lepem.ufc.br/jaa/colorout_1.0-3.tar.gz", destfile = "colorout_1.0-3.tar.gz")
  install.packages("colorout_1.0-3.tar.gz", type = "source", repos = NULL)
EOF
cd -

# google chrome
cd /tmp
wget -c wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
dpkg -i google-chrome-*.deb
apt-get install -y -f
cd -
