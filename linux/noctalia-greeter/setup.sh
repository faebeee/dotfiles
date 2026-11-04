#!/usr/bin/env bash

sudo rm -f /var/lib/noctalia-greeter/greeter.toml
sudo ln -sf "$(pwd -P)/greeter.toml" /var/lib/noctalia-greeter/greeter.toml
sudo chown -h greeter:greeter /var/lib/noctalia-greeter/greeter.toml

sudo systemctl restart greetd
echo "Done. Trigger 'Sync appearance to greeter' from Noctalia Shell settings to activate the Synced color scheme."
