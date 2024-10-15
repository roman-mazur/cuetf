package res

import "list"

#aws_lakeformation_resource_lf_tags: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_lakeformation_resource_lf_tags")
	catalog_id?: string
	id?:         string
	database?: #database | list.MaxItems(1) & [...#database]
	lf_tag?: #lf_tag | [_, ...] & [...#lf_tag]
	table?: #table | list.MaxItems(1) & [...#table]
	table_with_columns?: #table_with_columns | list.MaxItems(1) & [...#table_with_columns]
	timeouts?: #timeouts

	#database: {
		catalog_id?: string
		name!:       string
	}

	#lf_tag: {
		catalog_id?: string
		key!:        string
		value!:      string
	}

	#table: {
		catalog_id?:    string
		database_name!: string
		name?:          string
		wildcard?:      bool
	}

	#table_with_columns: {
		catalog_id?: string
		column_names?: [...string]
		database_name!: string
		excluded_column_names?: [...string]
		name!:     string
		wildcard?: bool
	}

	#timeouts: {
		create?: string
		delete?: string
	}
}
