package res

#aws_lightsail_bucket: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_lightsail_bucket")
	arn?:               string
	availability_zone?: string
	bundle_id:          string
	created_at?:        string
	force_delete?:      bool
	id?:                string
	name:               string
	region?:            string
	support_code?:      string
	tags?: [string]: string
	tags_all?: [string]: string
	url?: string
}
