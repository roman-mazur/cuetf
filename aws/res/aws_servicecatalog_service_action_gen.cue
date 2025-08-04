package res

import "list"

#aws_servicecatalog_service_action: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_servicecatalog_service_action")
	close({
		definition?: matchN(1, [#definition, list.MaxItems(1) & [_, ...] & [...#definition]])
		accept_language?: string
		description?:     string
		id?:              string
		name!:            string
		region?:          string
		timeouts?:        #timeouts
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
