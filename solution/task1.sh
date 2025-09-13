tmp=$(mktemp -d)
unzip data/archive-part2.zip -d "$tmp" && tar -xf data/archive-part1.tar -C "$tmp"
tar -czf data/archive-combined.tar.gz -C "$tmp" .
rm -r "$tmp"