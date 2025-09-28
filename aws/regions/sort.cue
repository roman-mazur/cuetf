package regions

import "list"

#InstaceTypesSort: {
	_sortFields: {InstanceType: string, ...}

	input: [..._sortFields]
	output: list.Sort(input, {x: _sortFields, y: _sortFields, less: x.InstanceType < y.InstanceType})
}
