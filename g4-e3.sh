#!/bin/bash

find / -type f -exec grep -l "#!/bin/bash" {} \;
