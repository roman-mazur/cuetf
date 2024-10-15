package res

#aws_storagegateway_tape_pool: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_storagegateway_tape_pool")
	arn?:                         string
	id?:                          string
	pool_name!:                   string
	retention_lock_time_in_days?: number
	retention_lock_type?:         string
	storage_class!:               string
	tags?: [string]:     string
	tags_all?: [string]: string
}
