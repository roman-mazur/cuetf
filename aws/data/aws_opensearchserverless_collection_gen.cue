package data

#aws_opensearchserverless_collection: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_opensearchserverless_collection")
	arn?:                 string
	collection_endpoint?: string
	created_date?:        string
	dashboard_endpoint?:  string
	description?:         string
	failure_code?:        string
	failure_message?:     string
	id?:                  string
	kms_key_arn?:         string
	last_modified_date?:  string
	name?:                string
	standby_replicas?:    string
	tags?: [string]: string
	type?: string
}
