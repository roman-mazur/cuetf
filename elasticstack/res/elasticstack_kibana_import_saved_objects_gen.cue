package res

#elasticstack_kibana_import_saved_objects: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/elasticstack_kibana_import_saved_objects")
	close({
		errors?: [...close({
			error?: close({
				type?: string
			})
			id?: string
			meta?: close({
				icon?:  string
				title?: string
			})
			title?: string
			type?:  string
		})]
		file_contents!:        string
		id?:                   string
		ignore_import_errors?: bool
		overwrite?:            bool
		space_id?:             string
		success?:              bool
		success_count?:        number
		success_results?: [...close({
			destination_id?: string
			id?:             string
			meta?: close({
				icon?:  string
				title?: string
			})
			type?: string
		})]
	})
}
