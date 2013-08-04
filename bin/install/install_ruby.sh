#!/bin/bash
# Installs Ruby 1.9.3, and Rails

echo "Install Ruby 1.9.3"
\curl -L https://get.rvm.io | bash -s stable --rails --autolibs=enabled # Or, --ruby=1.9.3
echo "Install Rails"
gem install rails

