package res

import "list"

#google_vpc_access_connector: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_vpc_access_connector")
	close({
		// List of projects using the connector.
		connected_projects?: [...string]

		// The range of internal addresses that follows RFC 4632 notation.
		// Example: '10.132.0.0/28'.
		ip_cidr_range?: string

		// Machine type of VM Instance underlying connector. Default is
		// e2-micro
		machine_type?: string

		// Maximum value of instances in autoscaling group underlying the
		// connector. Value must be between 3 and 10, inclusive. Must be
		// higher than the value specified by min_instances. Required
		// alongside 'min_instances' if not using
		// 'min_throughput'/'max_throughput'.
		max_instances?: number
		id?:            string

		// Maximum throughput of the connector in Mbps, must be greater
		// than 'min_throughput'. Default is 300. Refers to the expected
		// throughput
		// when using an e2-micro machine type. Value must be a multiple
		// of 100 from 300 through 1000. Must be higher than the value
		// specified by
		// min_throughput. Only one of 'max_throughput' and
		// 'max_instances' can be specified. The use of max_throughput is
		// discouraged in favor of max_instances.
		max_throughput?: number

		// Minimum value of instances in autoscaling group underlying the
		// connector. Value must be between 2 and 9, inclusive. Must be
		// lower than the value specified by max_instances. Required
		// alongside 'max_instances' if not using
		// 'min_throughput'/'max_throughput'.
		min_instances?: number

		// Minimum throughput of the connector in Mbps. Default and min is
		// 200. Refers to the expected throughput when using an e2-micro
		// machine type.
		// Value must be a multiple of 100 from 200 through 900. Must be
		// lower than the value specified by max_throughput.
		// Only one of 'min_throughput' and 'min_instances' can be
		// specified. The use of min_throughput is discouraged in favor
		// of min_instances.
		min_throughput?: number

		// The name of the resource (Max 25 characters).
		name!: string
		subnet?: matchN(1, [#subnet, list.MaxItems(1) & [...#subnet]])
		timeouts?: #timeouts

		// Name or self_link of the VPC network. Required if
		// 'ip_cidr_range' is set.
		network?: string
		project?: string

		// Region where the VPC Access connector resides. If it is not
		// provided, the provider region is used.
		region?: string

		// The fully qualified name of this VPC connector
		self_link?: string

		// State of the VPC access connector.
		state?: string
	})

	#subnet: close({
		// Subnet name (relative, not fully qualified). E.g. if the full
		// subnet selfLink is
		// https://compute.googleapis.com/compute/v1/projects/{project}/regions/{region}/subnetworks/{subnetName}
		// the correct input for this field would be {subnetName}"
		name?: string

		// Project in which the subnet exists. If not set, this project is
		// assumed to be the project for which the connector create
		// request was issued.
		project_id?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
