#!/bin/bash
rm -rf ~/learn 
mkdir -p ~/learn
(cd ~/learn; git init --initial-branch=main ~/learn) 
# Start fresh
(cd ~/learn; echo "start" > start.txt; git add start.txt; git commit -m "added start to main")
# Branch bug123 and add commits
(cd ~/learn; git checkout -b bug123) 
(cd ~/learn; echo "f" > f.txt; git add f.txt; git commit -m "Added f.txt bug123")
(cd ~/learn; echo "g" > g.txt; git add g.txt; git commit -m "Added g.txt bug123")
# Branch bug456 and add commits
(cd ~/learn; git checkout main)
(cd ~/learn; git checkout -b bug456)
(cd ~/learn; echo "j" > j.txt; git add j.txt; git commit -m "Added j.txt bug456")
(cd ~/learn; echo "k" > k.txt; git add k.txt; git commit -m "Added k.txt bug456")
# Branch bug786 and add commits
(cd ~/learn; git checkout main)
(cd ~/learn; git checkout -b bug786)
(cd ~/learn; echo "m" > m.txt; git add m.txt; git commit -m "Added m.txt bug786")
(cd ~/learn; echo "n" > n.txt; git add n.txt; git commit -m "Added n.txt bug786")
# Switch back to main and add independent commits
(cd ~/learn; git checkout main) 
(cd ~/learn; echo "h" > h.txt; git add h.txt; git commit -m "Added h.txt main")
(cd ~/learn; echo "i" > i.txt; git add i.txt; git commit -m "Added i.txt main")
# Show divergence
(cd ~/learn; git log --oneline --graph --decorate --all)
# Merge bug456 into main (Git decides strategy)
(cd ~/learn; git merge bug456) 
# Merge bug786 into main
(cd ~/learn; git merge bug786)
# Add more commits on main
(cd ~/learn; echo "o" > o.txt; git add o.txt; git commit -m "Added o.txt main")
# Finally merge bug123 into main
(cd ~/learn; git merge bug123)
# Show final history
(cd ~/learn; git log --oneline --graph --decorate --all)
rm -rf ~/learn 
