#!/usr/bin/fish

set dir (pwd)
set sumuptodate 0
set sumupdated 0
set listupdated

for f in "$dir"/*
	echo "||| Check $f"
	if test -d "$f"
		if test -d "$f/.git"
			cd "$f"
            set oldIFS "$IFS"
            set IFS ""
            set OUTPUT (git pull)
            set repo (basename $f)
            if [ "$OUTPUT" = "Already up-to-date." ]
                set sumuptodate (math $sumuptodate + 1)
                echo "$repo is up-to-date"
            else
                set sumupdated (math $sumupdated + 1)
                echo $OUTPUT
                set listupdated $listupdated $repo
            end
            set IFS "$oldIFS"
		else
			echo "$f is not a git repository, aborting"
        end
	else
		echo "skip $f - not a directory"
    end
    echo "||| Finish checking $repo"
end

echo
echo "+--------------------------------------------"
echo "| Report"
echo "+--------------------------------------------"
echo "| Sum of up to date repo(s) = $sumuptodate" 
echo "| Sum of updated repo(s) = $sumupdated"
echo "| List of updated repo(s) = "
for i in $listupdated
    echo "| - $i"
end
echo "+--------------------------------------------"
echo
