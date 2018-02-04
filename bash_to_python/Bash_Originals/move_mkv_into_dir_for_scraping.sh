# one liner shell command in transfer directory.
# Will move each .mkv into it's own folder based on name
for x in ./*.mkv; do mkdir "${x%.*}" && mv "$x" "${x%.*}"; done
