# usr/bin

# echo "Hello"

LIST=('Subfolder')
# cd 'Subfolder'
"$LIST" | dotnet format whitespace --include 
# FILES=$(git diff --cached --name-only --diff-filter=ACM "*.cs" | sed 's| |\\ |g')
# echo "$FILES"
# [ -z "$FILES" ] && exit 0

# FILES=$(git diff --cached --name-only --diff-filter=ACM "*.cs" | sed 's| |\\ |g')
# echo "$FILES"

# pwd
# for foldername in ${LIST[@]}; do
#   cd "$foldername"
#   pwd
# done
