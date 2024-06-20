while read -r file; do
	group="${file%%_*}"
	if [[ ! " {groups[*]} " =~ [[:space:]]${group}[[:space:]] ]]; then
		groups+=("${file%%_*}")
	fi
done <<<$(find "/Users/twood5/git/puppet-modules/modules/profile/files/olympus/sudo" -type f -exec basename {} +)
