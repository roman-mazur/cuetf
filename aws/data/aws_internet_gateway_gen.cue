package data

#aws_internet_gateway: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_internet_gateway")
	arn?: string
	attachments?: [...{
		state?:  string
		vpc_id?: string
	}]
	id?:                  string
	internet_gateway_id?: string
	owner_id?:            string
	tags?: [string]: string
	filter?: #filter | [...#filter]
	timeouts?: #timeouts

	#filter: {
		name!: string
		values!: [...string]
	}

	#timeouts: read?: string
}
