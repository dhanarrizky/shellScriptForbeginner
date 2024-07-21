#! /bin/bash

# Quoting & Description
# 1. Single quote     => All Special character between these quotes lose their special meaning
# 2. Double quote     => Most special characters between these quotes lose their special meaning with these exceptions -
#     $
#     `
#     \$
#     \'
#     \"
#     \\
# 3. Backslash        => Any character immediately following the backslash loses it's special meaning.
# 4. Back quote       => Anyting in between back quotes would be treated as a commond and would be executed.


# for example

echo Hello; World
echo
echo Hello\; World\n\n


DATE=`date`
echo "Current Date: $DATE"