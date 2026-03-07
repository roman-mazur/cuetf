package data

import "list"

#aws_lakeformation_permissions: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_lakeformation_permissions")
	close({
		data_cells_filter?: matchN(1, [#data_cells_filter, list.MaxItems(1) & [...#data_cells_filter]])
		data_location?: matchN(1, [#data_location, list.MaxItems(1) & [...#data_location]])
		database?: matchN(1, [#database, list.MaxItems(1) & [...#database]])
		lf_tag?: matchN(1, [#lf_tag, list.MaxItems(1) & [...#lf_tag]])
		lf_tag_policy?: matchN(1, [#lf_tag_policy, list.MaxItems(1) & [...#lf_tag_policy]])
		table?: matchN(1, [#table, list.MaxItems(1) & [...#table]])
		table_with_columns?: matchN(1, [#table_with_columns, list.MaxItems(1) & [...#table_with_columns]])
		catalog_id?:       string
		catalog_resource?: bool
		id?:               string
		permissions?: [...string]
		permissions_with_grant_option?: [...string]
		principal!: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
	})

	#data_cells_filter: close({
		database_name!:    string
		name!:             string
		table_catalog_id!: string
		table_name!:       string
	})

	#data_location: close({
		arn!:        string
		catalog_id?: string
	})

	#database: close({
		catalog_id?: string
		name!:       string
	})

	#lf_tag: close({
		catalog_id?: string
		key!:        string
		values!: [...string]
	})

	#lf_tag_policy: close({
		expression!: matchN(1, [_#defs."/$defs/lf_tag_policy/$defs/expression", [_, ...] & [..._#defs."/$defs/lf_tag_policy/$defs/expression"]])
		catalog_id?:    string
		resource_type!: string
	})

	#table: close({
		catalog_id?:    string
		database_name!: string
		name?:          string
		wildcard?:      bool
	})

	#table_with_columns: close({
		catalog_id?: string
		column_names?: [...string]
		database_name!: string
		excluded_column_names?: [...string]
		name!:     string
		wildcard?: bool
	})

	_#defs: "/$defs/lf_tag_policy/$defs/expression": close({
		key!: string
		values!: [...string]
	})
}
