#!/usr/bin/shell

LC_ALL=C
# Select files to format
FILES=$(git diff --cached --name-only --diff-filter=ACM "*.cs" | sed 's| |\\ |g')
[ -z "$FILES" ] && exit 0

# Format all selected files
echo "$FILES" | cat | xargs | sed -e 's/ /,/g' | xargs dotnet format --include

# Add back the modified files to staging
echo "$FILES" | xargs git add

exit 0

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
# dotnet format whitespace --folder --include ./Subfolder/*.cs
