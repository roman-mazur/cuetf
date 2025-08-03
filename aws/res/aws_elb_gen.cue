package res

import "list"

#aws_elb: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_elb")
	close({
		arn?: string
		availability_zones?: [...string]
		access_logs?: matchN(1, [#access_logs, list.MaxItems(1) & [...#access_logs]])
		health_check?: matchN(1, [#health_check, list.MaxItems(1) & [...#health_check]])
		listener?: matchN(1, [#listener, [_, ...] & [...#listener]])
		timeouts?:                    #timeouts
		connection_draining?:         bool
		connection_draining_timeout?: number
		cross_zone_load_balancing?:   bool
		desync_mitigation_mode?:      string
		dns_name?:                    string
		id?:                          string
		idle_timeout?:                number
		instances?: [...string]
		internal?:    bool
		name?:        string
		name_prefix?: string
		region?:      string
		security_groups?: [...string]
		source_security_group?:    string
		source_security_group_id?: string
		subnets?: [...string]
		tags?: [string]:     string
		tags_all?: [string]: string
		zone_id?: string
	})

	#access_logs: close({
		bucket!:        string
		bucket_prefix?: string
		enabled?:       bool
		interval?:      number
	})

	#health_check: close({
		healthy_threshold!:   number
		interval!:            number
		target!:              string
		timeout!:             number
		unhealthy_threshold!: number
	})

	#listener: close({
		instance_port!:      number
		instance_protocol!:  string
		lb_port!:            number
		lb_protocol!:        string
		ssl_certificate_id?: string
	})

	#timeouts: close({
		create?: string
		update?: string
	})
}
