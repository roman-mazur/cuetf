package res

#aws_s3control_bucket: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_s3control_bucket")
	arn?:                         string
	bucket!:                      string
	creation_date?:               string
	id?:                          string
	outpost_id!:                  string
	public_access_block_enabled?: bool
	tags?: [string]:     string
	tags_all?: [string]: string
}
