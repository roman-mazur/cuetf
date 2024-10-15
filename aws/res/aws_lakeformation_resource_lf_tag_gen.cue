package res

#aws_lakeformation_resource_lf_tag: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_lakeformation_resource_lf_tag")
	catalog_id?: string
	id?:         string
	database?: #database | [...#database]
	lf_tag?: #lf_tag | [...#lf_tag]
	table?: #table | [...#table]
	table_with_columns?: #table_with_columns | [...#table_with_columns]
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
		name!:          string
		column_wildcard?: #table_with_columns.#column_wildcard | [...#table_with_columns.#column_wildcard]

		#column_wildcard: excluded_column_names?: [...string]
	}

	#timeouts: {
		create?: string
		delete?: string
	}
}
