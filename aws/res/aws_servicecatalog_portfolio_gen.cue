package res

#aws_servicecatalog_portfolio: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_servicecatalog_portfolio")
	arn?:           string
	created_time?:  string
	description?:   string
	id?:            string
	name!:          string
	provider_name!: string
	tags?: [string]: string
	tags_all?: [string]: string
	timeouts?: #timeouts

	#timeouts: {
		create?: string
		delete?: string
		read?:   string
		update?: string
	}
}
