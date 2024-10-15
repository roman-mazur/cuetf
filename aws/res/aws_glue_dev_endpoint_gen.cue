package res

#aws_glue_dev_endpoint: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_glue_dev_endpoint")
	arguments?: [string]: string
	arn?:                       string
	availability_zone?:         string
	extra_jars_s3_path?:        string
	extra_python_libs_s3_path?: string
	failure_reason?:            string
	glue_version?:              string
	id?:                        string
	name!:                      string
	number_of_nodes?:           number
	number_of_workers?:         number
	private_address?:           string
	public_address?:            string
	public_key?:                string
	public_keys?: [...string]
	role_arn!:               string
	security_configuration?: string
	security_group_ids?: [...string]
	status?:    string
	subnet_id?: string
	tags?: [string]:     string
	tags_all?: [string]: string
	vpc_id?:                                 string
	worker_type?:                            string
	yarn_endpoint_address?:                  string
	zeppelin_remote_spark_interpreter_port?: number
}
