#!/usr/bin/env sh

# usage: sh ./generate-target-dependencies.sh |  dot -Tsvg -o target-graph.svg

packages=`swift package describe --type json`
targets=`echo $packages | jq '.targets'`
target_names=`echo $targets | jq -r '.[] | .name'`
body=""
template=`cat <<EOF
digraph DependenciesGraph {
node [shape = box]
%BODY%
}
`
for target_name in `echo $target_names`; do
	label='"'$target_name'" [label="'$target_name'"]'
	body+="$label\n"
	target_dependencies=`echo $targets | jq -r '.[] | select(.name == "'$target_name'") | select(.target_dependencies != null) | .target_dependencies | .[]'`
	for target_dependency in `echo $target_dependencies`; do
		target='"'$target_name'" -> "'$target_dependency'"'
		body+="$target\n"
	done
done
echo "$template" | sed -e 's/%BODY%/'"$body"'/'
