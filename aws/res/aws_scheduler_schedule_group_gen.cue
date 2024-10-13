package res

#aws_scheduler_schedule_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_scheduler_schedule_group")
	arn?:                    string
	creation_date?:          string
	id?:                     string
	last_modification_date?: string
	name?:                   string
	name_prefix?:            string
	state?:                  string
	tags?: [string]:     string
	tags_all?: [string]: string
	timeouts?: #timeouts

	#timeouts: {
		create?: string
		delete?: string
	}
}
