command brew install bash
command brew install bash-completion

command echo "/usr/local/bin/bash" | command sudo tee -a "/etc/shells"
command sudo chsh -s "/usr/local/bin/bash"
