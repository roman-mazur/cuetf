package data

#aws_elb: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_elb")
	access_logs?: [...{
		bucket?:        string
		bucket_prefix?: string
		enabled?:       bool
		interval?:      number
	}]
	arn?: string
	availability_zones?: [...string]
	connection_draining?:         bool
	connection_draining_timeout?: number
	cross_zone_load_balancing?:   bool
	desync_mitigation_mode?:      string
	dns_name?:                    string
	health_check?: [...{
		healthy_threshold?:   number
		interval?:            number
		target?:              string
		timeout?:             number
		unhealthy_threshold?: number
	}]
	id?:           string
	idle_timeout?: number
	instances?: [...string]
	internal?: bool
	listener?: [...{
		instance_port?:      number
		instance_protocol?:  string
		lb_port?:            number
		lb_protocol?:        string
		ssl_certificate_id?: string
	}]
	name!: string
	security_groups?: [...string]
	source_security_group?:    string
	source_security_group_id?: string
	subnets?: [...string]
	tags?: [string]: string
	zone_id?: string
}
