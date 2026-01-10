package res

import "list"

#aws_cloudwatch_event_endpoint: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_cloudwatch_event_endpoint")
	close({
		arn?:          string
		description?:  string
		endpoint_url?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		id?:     string
		name!:   string
		event_bus!: matchN(1, [#event_bus, list.MaxItems(2) & [_, _, ...] & [...#event_bus]])
		role_arn?: string
		replication_config?: matchN(1, [#replication_config, list.MaxItems(1) & [...#replication_config]])
		routing_config!: matchN(1, [#routing_config, list.MaxItems(1) & [_, ...] & [...#routing_config]])
	})

	#event_bus: close({
		event_bus_arn!: string
	})

	#replication_config: close({
		state?: string
	})

	#routing_config: close({
		failover_config!: matchN(1, [_#defs."/$defs/routing_config/$defs/failover_config", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/routing_config/$defs/failover_config"]])
	})

	_#defs: "/$defs/routing_config/$defs/failover_config": close({
		primary!: matchN(1, [_#defs."/$defs/routing_config/$defs/failover_config/$defs/primary", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/routing_config/$defs/failover_config/$defs/primary"]])
		secondary!: matchN(1, [_#defs."/$defs/routing_config/$defs/failover_config/$defs/secondary", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/routing_config/$defs/failover_config/$defs/secondary"]])
	})

	_#defs: "/$defs/routing_config/$defs/failover_config/$defs/primary": close({
		health_check?: string
	})

	_#defs: "/$defs/routing_config/$defs/failover_config/$defs/secondary": close({
		route?: string
	})
}
