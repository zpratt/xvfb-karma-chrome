#!/bin/bash

PUPPET_DIR="/vagrant/puppet"
LIBRARIAN_GEM=`gem list --local | grep librarian`
INIT_PATH="/etc/init.d/xvfbd"

if [ "${LIBRARIAN_GEM}n" = "n" ] ; then
  cd ${PUPPPET_DIR}
  mkdir -p ${PUPPET_DIR}/modules
  gem install --no-rdoc --no-ri librarian-puppet
  librarian-puppet install --clean
else
  cd ${PUPPPET_DIR}
  librarian-puppet update
fi

cp ${PUPPET_DIR}/shell/xvfbd ${INIT_PATH}
chown root:root ${INIT_PATH}
chmod 755 ${INIT_PATH}

