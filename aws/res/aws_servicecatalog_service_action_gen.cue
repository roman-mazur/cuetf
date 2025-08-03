package res

import "list"

#aws_servicecatalog_service_action: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_servicecatalog_service_action")
	close({
		accept_language?: string
		definition?: matchN(1, [#definition, list.MaxItems(1) & [_, ...] & [...#definition]])
		timeouts?:    #timeouts
		description?: string
		id?:          string
		name!:        string
		region?:      string
	})

	#definition: close({
		assume_role?: string
		name!:        string
		parameters?:  string
		type?:        string
		version!:     string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
