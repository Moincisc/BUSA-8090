#! /bin/bash
#ls

if [ $# -eq 0 ]; then
    echo "No arguments provided"
    exit 1
fi

if [ $1 == "older" ]
then   
   oldf=
   for f in *; do
      # not a file, ignore
      [[ ! -f "$f" ]] && continue
      # find oldest entry
      [[ -z "$oldf" ]] && oldf="$f" || [[ "$f" -ot "$oldf" ]] && oldf="$f"
   done
   printf '%s\n' "$oldf"
else
   echo "Invalid Argument provided. Required: older "
fi