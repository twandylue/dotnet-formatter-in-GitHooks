#!/usr/bin/shell

# echo "Hello"

# dotnet format --include 'Program.cs' whitespace 'MySolution.sln'
# FILES=$(git diff --cached --name-only --diff-filter=ACM "*.cs" | sed 's| |\\ |g')
# echo "$FILES"
# [ -z "$FILES" ] && exit 0

# FILES=$(git diff --cached --name-only --diff-filter=ACM "*.cs" | sed 's| |\\ |g')
# echo "$FILES"

# method 1
# LIST=('Subfolder')
# for folder in "${LIST[@]}"; do
#   cd "$folder" || exit
#   pwd
#   for file in *.cs; do
#     # cat ../MySolution.sln
#     dotnet format ../MySolution.sln --include "$file"
#   done
# done

# method 2
# pwd
# dotnet format ./MySolution.sln --include "./Subfolder/*.cs"

# method 3
